testing
usingMetacello

	| mySession gpn |
	usingMetacello ~~ nil ifTrue: [ ^usingMetacello ].
	self isLoggedIn ifFalse: [ ^false ].
	mySession := self session.
	^usingMetacello :=  mySession executeString: 
'((Smalltalk at: #ConfigurationOfGLASS ifAbsent: []) ~~ nil)  or: [ (Smalltalk at: #GLASSConfiguration ifAbsent: []) ~~ nil ]'
