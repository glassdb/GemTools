adding
addFrom
	| labelMorph |
	labelMorph := StringMorph new
		initialize;
		contents: 'From:';
		bounds: (4@27 extent: 60@42);
		yourself.
	workArea addMorph: labelMorph.
	fromField := self fromTextField.
	fromField layoutFrame: (LayoutFrame 
								fractions: (0@0 corner: 1@0) 
								offsets: (60@25 corner: 0@25)	).
	fromField hResizing: #spaceFill; vResizing: #spaceFill.
	workArea 
		addMorphBack: fromField
