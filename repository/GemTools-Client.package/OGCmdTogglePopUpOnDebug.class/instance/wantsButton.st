user interface
wantsButton
	^ ((requestor isSelected: target) and: [target isSessionNode ]) and: [ target isLoggedIn not ]