drag and drop
wantsDroppedMorph: transferMorph event: evt inMorph: listMorph 
	| node passenger |
	(transferMorph isKindOf: TransferMorph) ifFalse: [^false].
	node := self nodeForDropEvent: evt inMorph: listMorph.
	passenger := transferMorph passenger. 
"	Transcript show: node printString, ' ', passenger contents printString; cr."
"	^self canDrop: passenger on: node"
	^true