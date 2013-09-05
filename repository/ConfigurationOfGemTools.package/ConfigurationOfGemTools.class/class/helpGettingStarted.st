help
helpGettingStarted
	| stream |
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'To get started, install GemTools and see the ''GemTools'' chapter of the Help Browser';
		cr;cr;nextPutAll: 'You will also want to visit the ''Getting Started with GLASS'' page on the glassdb project site:';
		cr; tab; nextPutAll: 'http://code.google.com/p/glassdb/wiki/GettingStartedWithGLASS'.
	^ (Smalltalk at: #HelpTopic) perform: #title:contents: with: 'Getting Started' with: stream contents
