building
buildOn: aBuilder
	^ aBuilder
		multipleSelectionColumnOS: self 
		with: [self switch buildOn: aBuilder]