building
buildOn: aBuilder 
	| window |
	window := super buildOn: aBuilder.
	(window isKindOf: Morph) 
		ifTrue: [
			window paneMorphs third layoutFrame bottomFraction: 0.70.
			window paneMorphs second layoutFrame topFraction: 0.70; bottomFraction: 0.85.
			window paneMorphs first layoutFrame topFraction: 0.85 ].
	window addPaneSplitters.
	^window
