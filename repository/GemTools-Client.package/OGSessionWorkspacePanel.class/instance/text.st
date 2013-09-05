accessing
text

	| node |
	node := browser currentNode.
	^node == nil
		ifTrue: [ '']
		ifFalse: [ node workspaceText ]
