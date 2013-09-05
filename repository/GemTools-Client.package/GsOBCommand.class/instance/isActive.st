testing
isActive

	isActive ~~ nil ifTrue: [ ^isActive ].
	isActive := session receiver: oopType perform: 'isActive'.
	^isActive