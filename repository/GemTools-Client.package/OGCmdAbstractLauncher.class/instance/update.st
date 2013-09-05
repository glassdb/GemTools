actions
update
	| currentNode column |
	currentNode := self browser currentNode.
	self browser signalRefresh.
	(column := self browser navigationPanel currentColumn) ~~ nil
		ifTrue: [ self announce: (OBSelectionChanged column: self browser navigationPanel currentColumn) ]