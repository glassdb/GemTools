instance creation
session: aGsSession oopType: anOopType

	^aGsSession
		cacheAt: anOopType
		ifAbsentPut: [
			self basicNew initialize
				session: aGsSession oopType: anOopType.
		].
