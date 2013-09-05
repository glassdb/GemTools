*gemtools-platform
login

	self isLoggedIn ifTrue: [ ^self ].
	self basicLogin: true.
	self 
		autoAbort: self session autoAbort; 
		autoCommit: self session autoCommit; 
		autoMigrate: self session autoMigrate.
	GsOBBrowser primeClassCache: session.
	OBInteractionRequest registerClientForwarders: session.
	TranscriptStream registerClientForwarders: session.
	ThreadSafeTranscript registerClientForwarders: session.