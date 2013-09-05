callbacks
selection

	selection ~~ nil ifTrue: [ ^selection ].
	"Transcript cr; show: 'GsOBSwitch>>selection'."
	selection := session receiver: oopType perform: 'selection'.
	^selection