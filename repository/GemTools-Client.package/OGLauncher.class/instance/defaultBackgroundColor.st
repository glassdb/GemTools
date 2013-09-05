building
defaultBackgroundColor
	| aNode |
	aNode := self currentNode.
	^(aNode isNil or: [aNode autoCommit])
		ifTrue: [Color lightMagenta]
		ifFalse: [Color r: 1 g: 0.5 b: 0.5]