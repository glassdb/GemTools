callbacks
doItReceiver
	
	| result |
	^ ((result := session receiverOld: oopType
		perform: 'doItReceiver'
		withArguments: #()) isKindOf: OopType)
		ifTrue: [GsObject subClassObjectInSession: session oopType: result]
		ifFalse: [GsDoItReceiver new
					session: session
					yourself.]