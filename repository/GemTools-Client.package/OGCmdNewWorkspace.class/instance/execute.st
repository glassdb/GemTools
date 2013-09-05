execution
execute

	| workspaceName |
	(workspaceName := OBTextRequest prompt: 'Enter new workspace name') isNil ifTrue: [ ^self ].
	self workspaceNode workspaceView: #workspace.
	self workspaceNode setSelectedWorkspaceName: workspaceName.
	self workspaceNode workspaceText: ''.
	self update