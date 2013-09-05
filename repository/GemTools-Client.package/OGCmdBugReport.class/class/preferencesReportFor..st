private
preferencesReportFor: aSession

	| strm |
	strm := WriteStream on: String new.
	strm cr.
	OGCmdBrowserPreference subclasses do: [:cl |
		strm 
			nextPutAll: cl preference asString;
			nextPutAll: '=';
			nextPutAll: (aSession executeString: '(OBGemStonePlatform respondsTo: #preferencesDictionary) ifTrue: [OBGemStonePlatform preferencesDictionary at: #', cl preference asString, ' ifAbsent: [true]] ifFalse: [false]') asString;
			cr].
	strm 
		nextPutAll: 'syntaxHighlightingAsYouType=', Preferences syntaxHighlightingAsYouType printString;
		cr.
	^strm contents