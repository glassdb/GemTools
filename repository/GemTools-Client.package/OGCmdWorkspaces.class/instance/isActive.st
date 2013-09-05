testing
isActive
	^ ((requestor isSelected: target) and: [ target isWorkspaceNode ]) and: [ target isLoggedIn ]