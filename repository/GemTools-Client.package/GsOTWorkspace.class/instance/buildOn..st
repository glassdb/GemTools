building
buildOn: aBuilder 
	panel := panels first.
	^ aBuilder window: self with: [ 
		aBuilder verticalGroupWith: [
			panel buildOn: aBuilder ] ]