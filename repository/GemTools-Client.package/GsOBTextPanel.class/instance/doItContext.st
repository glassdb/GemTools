callbacks
doItContext
	
	| result |
	^ ((result := session receiverOld: oopType
		perform: 'doItContext'
		withArguments: #()) isKindOf: OopType)
		ifTrue: [GsObject subClassObjectInSession: session oopType: result]
		ifFalse: [result]