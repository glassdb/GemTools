Browser
sourceMethodAt: aByteString ifAbsent: aBlockContext 

	| gsMethod |
	gsMethod := self
		compiledMethodAt: aByteString
		ifAbsent: aBlockContext.
	^gsMethod sourceString.
