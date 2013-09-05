accessing
removeSelectedWorkspace

	| wsName |
	wsName := self selectedWorkspaceName.
	wsName == nil ifTrue: [ ^' ' ].
	(self confirm: 'Are you sure you want to remove workspace: ', wsName printString, '?')
		ifTrue: [
			self session executeString: '| wsDict | 
				wsDict := ' ,self workspaceEntry,'.
				wsDict removeKey: ''' , wsName , ''' ifAbsent: []'.
			self commitTransaction.
			selectedWorkspaceName := nil]