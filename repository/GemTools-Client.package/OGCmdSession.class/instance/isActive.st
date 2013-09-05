testing
isActive
	^ ((requestor isSelected: target) and: [ target isSessionNode ]) and: [ target isLoggedIn not ]