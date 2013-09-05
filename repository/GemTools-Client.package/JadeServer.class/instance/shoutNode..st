OmniBrowser
shoutNode: node

	(((node isKindOf: OBMethodNode) or: [node isKindOf: OBMethodCategoryNode]) or: [node isKindOf: OGContextNode])
		ifTrue:[ ^#method ].
	((node isKindOf: OBClassNode) or:[(node isKindOf: OBClassCategoryNode)]) 
		ifTrue:[ ^#class ].
	^nil