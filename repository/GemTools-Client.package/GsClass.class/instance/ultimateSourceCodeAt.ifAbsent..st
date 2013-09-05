Browser
ultimateSourceCodeAt: aByteString ifAbsent: aBlockContext 

	| method |
	method := self
		compiledMethodAt: aByteString
		ifAbsent: aBlockContext.
	^method sourceString.
