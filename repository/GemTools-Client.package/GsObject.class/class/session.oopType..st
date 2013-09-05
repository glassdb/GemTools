Instance Creation
session: aGsSession oopType: anOopType

	^aGsSession
		cacheAt: anOopType
		ifAbsentPut: [
			self new
				session: aGsSession;
				oopType: anOopType;
				yourself.
		].
