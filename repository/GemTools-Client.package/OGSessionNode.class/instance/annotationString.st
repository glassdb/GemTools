accessing
annotationString

	| str |
	str := '' asText.
	self isLoggedIn
		ifTrue: [ | gpn |
			(gpn := self glassPackageName ) isEmpty ifFalse: [ str := str, gpn asText allBold ].
			(self autoCommit not or: [self autoMigrate not]) ifTrue: [ str addAttribute: (TextColor color: Color red) ].
			str := str, ' workspace: ' asText allBold, self selectedWorkspaceName printString.
			str := str, ' auto:' asText allBold , ' ['.
			self autoAbort ifTrue: [str := str, ('abort' asText addAttribute: (TextColor color: Color red))].
			self autoCommit 
				ifTrue: [
					self autoAbort ifTrue: [ str := str, ' ' ].
					str := str, ('commit' asText addAttribute: (TextColor color: Color red))].
			self autoMigrate 
				ifTrue: [
					str := str, (' migrate' asText addAttribute: (TextColor color: Color red))].
			str := str, ']'.
			(self backupFileName) isEmpty not
				ifTrue: [str := str, ' backup: ' asText allBold, self backupFileName printString ].
			].
	^str