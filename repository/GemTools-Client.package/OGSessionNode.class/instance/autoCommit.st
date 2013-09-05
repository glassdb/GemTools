accessing
autoCommit

	autoCommit == nil ifTrue: [ autoCommit := true ].
	^autoCommit