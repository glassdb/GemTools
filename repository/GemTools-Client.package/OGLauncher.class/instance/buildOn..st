building
buildOn: aBuilder 
	| window |
	window := super buildOn: aBuilder.
	(window isKindOf: Morph) 
		ifTrue: [ | aSplitter |
			window paneMorphs second layoutFrame bottomFraction: 0.15; bottomOffset: -4.
			window paneMorphs first layoutFrame topFraction: 0.15; topOffset: 0.
			aSplitter := window submorphs detect: [:m | m isKindOf: ProportionalSplitterMorph].
			"too bad that the min topBoundary of ProportionalSplitterMorph is currently 75"
			aSplitter isNil 
				ifFalse: [aSplitter layoutFrame topFraction: 0.15; bottomFraction: 0.15; bottomOffset: 0; topOffset: -4].
			].
	^window