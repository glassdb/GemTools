version loading
doGLASS10beta0Preload

	SmalltalkProxy
		compileMethod:
'at: aGlobalName put: anObject
	^(System myUserProfile symbolList objectNamed: #UserGlobals)
		at: aGlobalName
		put: anObject'
		category: 'accessing'.
	TranscriptProxy class
		compileMethod:
'tab
	| proxy |
	(proxy := self proxyTranscript) ~~ nil ifTrue: [ proxy tab ]'
		category: 'transcript'.
