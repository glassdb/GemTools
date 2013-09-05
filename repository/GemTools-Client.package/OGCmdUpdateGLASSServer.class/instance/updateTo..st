private
updateTo: selectedPackageName

	|  specs targetSpec |
	Transcript cr; show: '---Beginning update to : ', selectedPackageName; show: ' ('; print: TimeStamp now; show: ')'.
	specs := OGUpdateSpec updateSpecs reverse asOrderedCollection.
	targetSpec := specs detect: [:spec | spec version = selectedPackageName ] ifNone: [ OGUpdateSpec named: selectedPackageName ].
	Transcript cr; show: '------Executing load for package: ', targetSpec version; show: ' ('; print: TimeStamp now; show: ')'.
	self session executeStringNB: targetSpec postDoit.
	Transcript cr; show: '------Finished load for package: ', targetSpec version; show: ' ('; print: TimeStamp now; show: ')'. 	
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
