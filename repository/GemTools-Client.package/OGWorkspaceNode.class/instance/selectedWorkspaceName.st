accessing
selectedWorkspaceName

	selectedWorkspaceName == nil
		ifTrue: [ |wsNames |
			(wsNames := self workspaceNames) isEmpty
				ifTrue: [ ^'GLASS' ]
				ifFalse: [ selectedWorkspaceName := wsNames first ]].
	^selectedWorkspaceName