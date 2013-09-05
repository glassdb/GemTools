session support
objectNamed: aSymbol
	"not very efficient....should probably eliminate senders"
	
	^GsObject subClassObjectInSession: session oopType: (self gsPerform: #objectNamed: with: aSymbol)