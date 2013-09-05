private
reportCompilerError: ex for: session

	| errorString array sourceStream |
	errorString := session jadeServer reportCompileErrors: ex tag args first.
	array := errorString gsSubStrings2: Character lf.
	array := array first gsSubStrings2: Character tab.
	sourceStream := self selectionAsStream.
	self 
		notify: (array at: 3) 
		at: (array at: 2) asNumber + sourceStream position
		in: sourceStream.
