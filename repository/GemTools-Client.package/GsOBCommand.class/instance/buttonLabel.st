accessing
buttonLabel

	buttonLabel ~~ nil ifTrue: [^buttonLabel].
	buttonLabel := session receiver: oopType perform: 'buttonLabel'.
	^buttonLabel