initializing
setMetaNode: aMetaNode node: aNode 

	root := aNode.
	root metaNode: aMetaNode.
	self initializeCommands.
	self signalRefresh