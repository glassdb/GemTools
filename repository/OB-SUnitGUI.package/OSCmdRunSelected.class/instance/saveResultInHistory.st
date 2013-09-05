history
saveResultInHistory
	(result respondsTo: #dispatchResultsIntoHistory)
		ifTrue: [ result dispatchResultsIntoHistory ]