accessing
autoAbort: aBoolean

	autoAbort := aBoolean.
	self session autoAbort: aBoolean.
	"if autoAbort is turned on, autoCommit should be turned on."
	autoAbort ifTrue: [ self autoCommit: true ]
