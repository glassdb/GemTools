printing
printOn: stream
	stream nextPutAll: version;
		nextPutAll: ' [';
		nextPutAll: tag;
		nextPut: $]
	