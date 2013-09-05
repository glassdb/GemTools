accessing
backupFileName: aString

	aString == nil 
		ifTrue: [ backupFileName := nil ]
		ifFalse: [ 
			backupFileName := aString.
			self isLoggedIn 
				ifTrue: [ self session executeStringNB: self backupFileEntry, ' put: ', backupFileName printString, '. System commitTransaction.' ]].
