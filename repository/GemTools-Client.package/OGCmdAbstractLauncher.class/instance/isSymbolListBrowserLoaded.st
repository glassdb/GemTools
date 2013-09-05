testing
isSymbolListBrowserLoaded

	^self session executeString: 'Smalltalk at: #OBSymbolListBrowser ifAbsent: [ ^false ]. ^true'
