testing
isActive

	self browser selectionPath detect: [:each | each isTestNode] ifNone: [^false ].
	^(requestor isKindOf: OBFixedButtonPanel) and: [target root hasFailures]