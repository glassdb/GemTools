accessing
multipleSelection

	multipleSelection == nil ifTrue: [ self refreshMultipleSelection ].
	^multipleSelection