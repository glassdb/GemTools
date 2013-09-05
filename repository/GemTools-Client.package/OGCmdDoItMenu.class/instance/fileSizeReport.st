expressions
fileSizeReport
	| result session |
	session := self session.
	result := (session executeString:  'SystemRepository fileSizeReport') asString.
	
	UIManager default edit: result withSqueakLineEndings label: 'File Size Report' accept: nil