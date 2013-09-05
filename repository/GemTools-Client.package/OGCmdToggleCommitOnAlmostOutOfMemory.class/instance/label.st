accessing
label
	^ (self staticHandlerInstalled
		ifTrue: ['[x] ']
		ifFalse: ['[o] ']), 'Commit on Almost Out of Memory'