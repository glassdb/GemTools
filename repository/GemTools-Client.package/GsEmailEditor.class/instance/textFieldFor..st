adding
textFieldFor: content
	| ptm |
	ptm := TextMorph new
		contents: content;
		margins: 2@0;
		initialize;
		yourself.
	ptm
		borderInset;
		wrapFlag: true;
		borderWidth: 1.
	^ptm