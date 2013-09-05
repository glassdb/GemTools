help
helpInstallation
	| stream |
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'To install  GemTools, execute the following expression:';
		cr; tab; nextPutAll: 'ConfigurationOfGemTools loadLatestVersion.'.
	^ (Smalltalk at: #HelpTopic) perform: #title:contents: with: 'Installing' with: stream contents
