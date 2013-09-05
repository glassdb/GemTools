building
buildOn: aBuilder
	^ aBuilder window: self with: 
		[aBuilder horizontalGroupWith:
			[panels first buildOn: aBuilder.
			panels second buildOn: aBuilder].
		aBuilder horizontalGroupWith:
			[panels third buildOn: aBuilder.
			panels fourth buildOn: aBuilder]]