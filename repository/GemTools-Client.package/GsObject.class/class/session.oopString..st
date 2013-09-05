Instance Creation
session: aGsSession oopString: aString

	| oopType |
	oopType := aGsSession localForStringOop: aString.
	^self
		session: aGsSession
		oopType: oopType.
