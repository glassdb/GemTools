accessing
backupFileName

	backupFileName == nil 
		ifTrue: [
			backupFileName := self isLoggedIn 
				ifTrue: [ self session executeStringNB: self backupFileEntry, ' ifAbsent: ['''']' ] 
				ifFalse: [ '' ]].
	^backupFileName