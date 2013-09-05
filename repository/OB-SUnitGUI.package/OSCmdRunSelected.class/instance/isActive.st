testing
isActive

	| column |
	(requestor isKindOf: OBFixedButtonPanel) ifFalse: [ ^false ].
	column := requestor browser navigationPanel columns at: 2.
	^column selectedNode notNil