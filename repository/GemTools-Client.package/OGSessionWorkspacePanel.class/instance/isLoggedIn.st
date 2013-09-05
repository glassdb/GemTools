testing
isLoggedIn

	| cn |
	^(cn := self browser currentNode) ~~ nil
		ifTrue: [ cn  isLoggedIn ]
		ifFalse: [ false ]