building
buildOn: aBuilder 
	| morph |
	morph := aBuilder classicTextfield: self with: [ ].
	morph borderColor: Color lightGray