printing
printOn: aStream
	[(self gsPerform: 'printString') printOn: aStream] on: Error do: [:ex | super printOn: aStream]