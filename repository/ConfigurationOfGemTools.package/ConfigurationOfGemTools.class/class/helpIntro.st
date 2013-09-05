help
helpIntro
	| stream |
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'GemTools is the Pharo-based development environment for GLASS. See the Help tab labeled ''GemTools'' for help on getting started.';
		cr;cr;nextPutAll: 'GemTools is written and maintained by:';
		cr;tab;nextPutAll: 'Dale Henrichs';
		cr;cr;nextPutAll: 'To submit bug reports, visit the following link:';
		cr;tab;nextPutAll: 'http://code.google.com/p/glassdb/issues/entry';
		cr;cr;nextPutAll: 'For additional info see the GemTools pages on the glassdb project site:';
		cr;tab;nextPutAll: 'http://code.google.com/p/glassdb/wiki/GemTools';
		cr; tab; nextPutAll: 'http://code.google.com/p/glassdb/wiki/GettingStartedWithGLASS'.
	^ (Smalltalk at: #HelpTopic) perform: #title:contents: with: 'Introduction' with: stream contents