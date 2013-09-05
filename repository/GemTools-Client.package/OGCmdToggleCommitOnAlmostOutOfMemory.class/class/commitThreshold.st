accessing
commitThreshold

	CommitThreshold == nil ifTrue: [ CommitThreshold := 75 ].
	^CommitThreshold