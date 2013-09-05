execution
execute
	| menu workspaceNames currentWS workspaceNode |
	menu := MenuMorph entitled: 'Workspace...'.

	menu addLine.
	target isLoggedIn
		ifTrue: [
			self addCommand: OGCmdNewWorkspace to: menu.
			self addCommand: OGCmdOpenWorkspace label: 'Open' to: menu.
			self addCommand: OGCmdRemoveWorkspace to: menu.
			workspaceNode := self workspaceNode.
			currentWS := workspaceNode selectedWorkspaceName.
			workspaceNames := workspaceNode workspaceNames.
			workspaceNames isEmpty
				ifFalse: [
					menu addLine.
					workspaceNames do: [:each |
						menu 
							add: (currentWS = each ifTrue: [('x ' , each) asText allBold] ifFalse: ['o ', each])
							target: self
							selector: #selectWorkspace:
							argument: each].
					menu addLine.
					menu 
						add: 'Session Info'
						target: self
						selector: #sessionInfo]].
	menu popUpInWorld