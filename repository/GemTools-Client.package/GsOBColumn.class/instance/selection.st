callbacks
selection
	selection ~~ nil ifTrue: [ ^selection ].
	selection := session 
		receiver: oopType 
		perform: 'selection'.
	^selection