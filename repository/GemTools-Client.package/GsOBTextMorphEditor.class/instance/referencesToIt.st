menu messages
referencesToIt

	| selector |
	self lineSelectAndEmptyCheck: [^ self].
	(selector := self selectedSymbol) == nil ifTrue: [ ^self ].
	model doItReceiver session jadeServer referencesToIt: selector