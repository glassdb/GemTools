accessing
receiverInspector

	receiverInspector == nil 
		ifTrue: [ | oop |
			oop := session receiver: oopType perform: 'receiverInspector'.
			receiverInspector := GsOBBrowser session: session oopType: oop].
	^receiverInspector