menu messages
referencesToIt: aSymbol

	| entry |
	entry := Smalltalk at: aSymbol ifAbsent: [nil].
	(entry isKindOf: Class) ifFalse: [entry := entry class].
	OBReferencesBrowser browseRoot: entry asNode