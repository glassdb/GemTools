building
buildOn: aBuilder
	| first second window |
	first := second := nil.
	window := aBuilder window: self with: [
		aBuilder horizontalGroupWith: [
			first := aBuilder root.
			self panels allButLast do: [ :each |
				each buildOn: aBuilder ] ].
		aBuilder horizontalGroupWith: [
			second := aBuilder root.
			self panels last buildOn: aBuilder ] ].
	(window isKindOf: Morph) ifTrue: [ 
		first layoutFrame bottomFraction: 0.75.
		second layoutFrame topFraction: 0.75 ].
	window addPaneSplitters.
	^ window