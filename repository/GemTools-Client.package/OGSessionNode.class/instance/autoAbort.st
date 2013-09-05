accessing
autoAbort

	autoAbort == nil ifTrue: [ autoAbort := true ].
	^autoAbort