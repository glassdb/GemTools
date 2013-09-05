as yet unclassified
doItReceiver
	"If the 'doIt' string includes a reference to 'self', then what is self?
	Also, if there are class variables, then it could be nice to see them.
	
	This object's class will be sent #'evaluatorClass' and expected to answer
	something like a Compiler."
	
	| result |
	^ ((result := session receiverOld: oopType
		perform: 'doItReceiver'
		withArguments: #()) isKindOf: OopType)
		ifTrue: [GsObject subClassObjectInSession: session oopType: result]
		ifFalse: [result]