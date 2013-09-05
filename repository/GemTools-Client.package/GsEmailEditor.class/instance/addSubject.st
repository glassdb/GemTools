adding
addSubject
	| labelMorph |
	labelMorph := StringMorph new
		initialize;
		contents: 'Subject:';
		bounds: (4@81 extent: 60@97);
		yourself.
	workArea addMorph: labelMorph.
	workArea 
		addMorph: (subjectField := self subjectTextField)
		fullFrame: (
			LayoutFrame 
				fractions: (0@0 corner: 1@0) 
				offsets: (60@79 corner: 0@79)	);
		yourself.