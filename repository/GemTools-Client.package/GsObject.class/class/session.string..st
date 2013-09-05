Instance Creation
session: aGciSession string: aString

	| list |
	list := aString gsSubStrings2: Character tab.
	^(self
		session: aGciSession
		oopString: (list at: 1))
		initialize: list;
		yourself.
