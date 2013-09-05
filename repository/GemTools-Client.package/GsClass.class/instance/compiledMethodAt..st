Browser
compiledMethodAt: aByteString 
	
	^self
		compiledMethodAt: aByteString
		ifAbsent: [self error: 'method not found'].
		