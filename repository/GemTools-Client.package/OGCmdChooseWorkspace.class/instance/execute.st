execution
execute
	(self browser workspacePanel canDiscardEdits or: [| ok |
			ok := OBConfirmationRequest
				prompt: 'Changes have not been saved.
Is it OK to discard those changes?'
				confirm: 'Discard changes'.
				ok notNil and: [ok]
					])
		ifTrue: [
			self workspaceNode workspaceView: #workspace.
			self workspaceNode setSelectedWorkspaceName: workspaceName.
			self update ]
	
		
