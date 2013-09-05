accessing
preferenceAt: aSymbol put: aBoolean for: aSession
	aSession executeString: '(OBGemStonePlatform respondsTo: #preferencesDictionary) ifTrue: [OBGemStonePlatform preferencesDictionary at: #', aSymbol asString, ' put: ', aBoolean asString, ']'