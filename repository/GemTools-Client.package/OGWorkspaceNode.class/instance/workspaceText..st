accessing
workspaceText: aText

	^self isLoggedIn
		ifTrue: [ | wsName |
			wsName := self selectedWorkspaceName.
			wsName == nil ifTrue: [ ^false ].
			self session executeString: '| wsDict | 
			wsDict := ' ,self workspaceEntry, ' ifAbsent: [', self workspaceEntry ,' put: StringKeyValueDictionary new].
			wsDict at: ''' , wsName , ''' put: ' , aText asString printString.
			self commitTransaction ]
		ifFalse: [false]