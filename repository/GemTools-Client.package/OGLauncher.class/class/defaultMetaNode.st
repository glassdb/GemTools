configuration
defaultMetaNode
	| launcher session |
	launcher := OBMetaNode named: 'Launcher'.
	session := OBMetaNode named: 'Session'.
	launcher childAt: #sessions put: session.
	^launcher