Browser
compiledMethodAt: aByteString ifAbsent: aBlockContext 

	methods isNil ifTrue: [methods := Dictionary new].
	^methods
		at: aByteString
		ifAbsentPut: [
			| method |
			method := session
				receiver: oopType
				perform: 'compiledMethodAt:'
				with: aByteString.
			method isNil ifTrue: [^nil].
			method := GsMethod
				session: session 
				oopType: method 
				name: aByteString.
			method gsClass: self.
			method.
		].
