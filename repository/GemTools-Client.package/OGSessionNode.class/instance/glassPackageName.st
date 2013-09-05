accessing
glassPackageName

	glassPackageName ~~ nil ifTrue: [ ^glassPackageName ].
	glassPackageName := self isLoggedIn
		ifTrue: [| mySession gpn |
			mySession := self session.
			self usingMetacello 
				ifTrue: [ 
					gpn := mySession executeString:
'[	Smalltalk at: #ConfigurationOfGLASS ifPresent: [:cl | ^cl project currentVersion versionString ].
	Smalltalk at: #GLASSConfiguration ifPresent: [:cl | ^cl currentVersion versionString ]]
		on: Error do: [:ex | ^''error determining version'' ].
^''unknown version''' ]
				ifFalse: [ 
					gpn :=  mySession executeString: '| wc |
					(wc := MCWorkingCopy registry at: (MCPackage named: ''GLASS'') ifAbsent: [ nil ]) == nil
						ifTrue: [ '''' ]
						ifFalse: [ wc ancestry ancestorString ]' ].
			gpn]
		ifFalse: [''].
	^glassPackageName