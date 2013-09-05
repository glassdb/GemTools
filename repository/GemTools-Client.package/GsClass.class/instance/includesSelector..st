Browser
includesSelector: aByteString 

	self
		compiledMethodAt: aByteString
		ifAbsent: [^false].
	^true.
