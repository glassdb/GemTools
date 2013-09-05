callbacks
selection: anInteger

	selection := nil.
	"Transcript cr; show: '--------------------------selection: ', anInteger printString."
	session receiver: oopType perform: 'selection:' with: anInteger.
