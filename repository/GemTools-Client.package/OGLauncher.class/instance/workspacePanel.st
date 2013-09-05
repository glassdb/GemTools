accessing
workspacePanel
	^ panels 
		detect: [:ea | ea isWorkspace] 
		ifNone: [self error: 'No workspace panel configured']