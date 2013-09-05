accessing
workspaceNode

	workspaceNode == nil
		ifTrue: [ workspaceNode :=  self newWorkspaceNode  ].
	^workspaceNode