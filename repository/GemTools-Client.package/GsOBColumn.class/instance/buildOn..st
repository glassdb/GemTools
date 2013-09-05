building
buildOn: aBuilder
	^ aBuilder 
		pane: self 
		with: [self switch buildOn: aBuilder]