accessing
workspaceText

	^self isLoggedIn
		ifTrue: [| mySession |
			mySession := self session.
			self workspaceView == #sessionInfo
				ifTrue: [| infoString crString  |
					crString := String with: Character cr.
					infoString := 'Session ID: ' asText allBold.
					infoString := infoString,  mySession number asString, crString.
					infoString := infoString , 'User ID: ' asText allBold, mySession userID, crString.
					infoString := infoString , 'Stone host: ' asText allBold, mySession stoneHost, crString.
					infoString := infoString , 'Gem host: ' asText allBold, mySession gemHost, crString.
					infoString := infoString , 'Stone name: ' asText allBold, mySession stoneName, crString.
					infoString asString printString]
				ifFalse: [ | wsName |
					wsName := self selectedWorkspaceName.
					wsName == nil ifTrue: [ ^' ' ].
					mySession executeString: '| wsDict | 
						wsDict := ', self workspaceEntry ,' ifAbsent: [].
						wsDict isNil ifTrue: [''''] ifFalse: [
						wsDict at: ''' , wsName , ''' ifAbsent: ['''']]'] ]
		ifFalse: ['']