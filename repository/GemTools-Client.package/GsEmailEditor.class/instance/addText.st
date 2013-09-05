adding
addText
	text := self getText.
	workArea 
		addMorph: (textField := self contentTextField)
		fullFrame: (
			LayoutFrame 
				fractions: (0@0 corner: 1@1) 
				offsets: (0@104 corner: 0@0)
		);
		yourself.