drag and drop
nodeForDropEvent: evt inMorph: pluggableListMorph 
	| index |
	index := pluggableListMorph rowAtLocation: evt position.
	index = 0 ifTrue: [^nil].
	^self listAt: index