callbacks
accept: aText notifying: aController

	| node |
	node := browser currentNode.
	^node == nil
		ifTrue: [ false ]
		ifFalse: [ node workspaceText: aText ]
