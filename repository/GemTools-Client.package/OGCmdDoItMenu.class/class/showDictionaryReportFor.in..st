accessing
showDictionaryReportFor: doit in: session

	^(session executeString:  '| aDict resultString |
		resultString := String new.
		aDict := ' , doit , '.
		aDict keys asSortedCollection do: [:k | | v | 
			v := aDict at: k.
			resultString add: k asString; add: '': ''; add: v asString; add: (String with: Character cr)].
		resultString') asString.
	