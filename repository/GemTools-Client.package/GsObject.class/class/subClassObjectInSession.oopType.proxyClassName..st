forwarding
subClassObjectInSession: aGsSession oopType: anOopType proxyClassName: proxyClassName
	^ aGsSession
		cacheAt: anOopType
		ifAbsentPut: [| subClassName | 
			subClassName := proxyClassName == nil 
				ifTrue: [ ('Gs', (aGsSession receiver: anOopType perform: #proxyClassName)) asSymbol ]
				ifFalse: [ proxyClassName asSymbol ].
			(self allSubclasses
				detect: [:aSubClass | aSubClass name == subClassName]
				ifNone: [self]) new session: aGsSession;
				 oopType: anOopType;
				 yourself]