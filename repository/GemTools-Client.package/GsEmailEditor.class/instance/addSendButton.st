adding
addSendButton

	| morph |
	morph := SimpleButtonMorph new
		initialize;
		useRoundedCorners;
		target: self;
		label: 'Send';
		actionSelector: #send;
		color: Color green;
		yourself.
	workArea 
		addMorph: morph
		fullFrame: (
			LayoutFrame 
				fractions: (0@0 corner: 0@0) 
				offsets: (2@2 extent: 60@20))