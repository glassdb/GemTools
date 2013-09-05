private
updateTo: selectedPackageName from: repoUrl

	| specs targetSpec startSpec start end currentVersion |
	Transcript cr; show: '---Beginning update to : ', selectedPackageName; show: ' ('; print: TimeStamp now; show: ')'.
	specs := OGUpdateSpec updateSpecs reverse asOrderedCollection.
	targetSpec := specs detect: [:spec | spec version = selectedPackageName ] ifNone: [ OGUpdateSpec named: selectedPackageName ].
	end := specs indexOf: targetSpec.
	end = 0 
		ifTrue: [
			specs addLast: targetSpec.
			end := specs size ].
	currentVersion := self sessionNode glassPackageName, '.mcz'.
	startSpec := specs detect: [:spec | spec version = currentVersion ] ifNone: [ specs at: end - 1 ].
	start := specs indexOf: startSpec.
	start to: end do: [:i | | spec |
		spec := specs at: i.
		(spec preDoit isEmpty not or: [spec postDoit isEmpty not or: [spec == targetSpec ]])
			ifTrue: [
				spec preDoit isEmpty not
					ifTrue: [
						Transcript cr; show: '------Executing preDoit for package: ', spec version; show: ' ('; print: TimeStamp now; show: ')'.
						self session executeStringNB: spec preDoit.
						Transcript cr; show: '------Finished preDoit for package: ', spec version; show: ' ('; print: TimeStamp now; show: ')' ].
				spec == targetSpec
					ifTrue: [ | glassSpec |
						Transcript cr; show: '------Beginning update to package: ', spec version; show: ' ('; print: TimeStamp now; show: ')'. 
						glassSpec := spec.
						(spec version = '1.0-beta.8')
							ifTrue: [ glassSpec := OGUpdateSpec from: {'GLASS.230-dkh.231.mcz'. #beta. ''. ''. } ].
						(self session jadeServer loadVersionNamed: glassSpec version from: repoUrl)
							ifFalse: [ 
								self update.
								Transcript cr; show: '---FAILED update to : ', spec version; show: ' ('; print: TimeStamp now; show: ')'.
								(OBConfirmationRequest prompt: 'The final commit for loading', spec version printString, ' failed. Would you like to inspect transaction conflicts?')
			 						ifTrue: [ self session jadeServer inspectTransactionConflicts ].
								^self ]].
				spec postDoit isEmpty not
					ifTrue: [
						Transcript cr; show: '------Executing postDoit for package: ', spec version; show: ' ('; print: TimeStamp now; show: ')'.
						self session executeStringNB: spec postDoit.
						Transcript cr; show: '------Finished postDoit for package: ', spec version; show: ' ('; print: TimeStamp now; show: ')' ]]].
	self session commit 
		ifTrue: [ 
			self sessionNode logout; login.
			self update.
			Transcript cr; show: '---Finished update to : ', selectedPackageName; show: ' ('; print: TimeStamp now; show: ')'.
			OBInformRequest message: 'Successful update to ', selectedPackageName printString, '.' ]
		ifFalse: [
			Transcript cr; show: '---FAILED postDoit commit. ('; print: TimeStamp now; show: ')'.
			(OBConfirmationRequest prompt: 'The final postDoit commit failed. Would you like to inspect transaction conflicts?')
			 	ifTrue: [ self session jadeServer inspectTransactionConflicts ]].
