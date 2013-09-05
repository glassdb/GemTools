initializing
initializeCommands
	
	cmdFactories := OrderedCollection with: OGCmdNewWorkspace with: OGCmdRemoveWorkspace.
	self currentNode workspaceNames do: [:each |
		cmdFactories add: (OGCmdChooseWorkspace new workspaceName: each) ].
	cmdFactories := cmdFactories asArray