building
buildOn: aBuilder 
	| group |
	^aBuilder window: self
		with: 
			[self buildGroup: self panels reversed on: aBuilder]