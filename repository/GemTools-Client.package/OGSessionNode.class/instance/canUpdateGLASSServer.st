testing
canUpdateGLASSServer

	| mySession gpn |
	self usingMetacello ifFalse: [ ^false ].
	self isLoggedIn ifFalse: [ ^false ].
	mySession := self session.
	^mySession executeString: 'Smalltalk at: #ConfigurationOfGLASS ifAbsent: [ ^false ]. ^true'