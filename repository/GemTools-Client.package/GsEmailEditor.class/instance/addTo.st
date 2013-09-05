adding
addTo
	| labelMorph |
	labelMorph := StringMorph new
		initialize;
		contents: 'To:';
		bounds: (4@54 extent: 60@68);
		yourself.
	workArea addMorph: labelMorph.
	toField := self toTextField.
	toField layoutFrame: (LayoutFrame 
							fractions: (0@0 corner: 1@0) 
							offsets: (60@52 corner: 0@52)	).
	toField hResizing: #spaceFill; vResizing: #spaceFill.
	workArea 
		addMorphBack: toField

