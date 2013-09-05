forwarding
doesNotUnderstand: aMessage 
	| result |
	^ ((result := session receiverOld: oopType
		perform: aMessage selector
		withArguments: aMessage arguments) isKindOf: OopType)
		ifTrue: [GsObject subClassObjectInSession: session oopType: result]
		ifFalse: [result]