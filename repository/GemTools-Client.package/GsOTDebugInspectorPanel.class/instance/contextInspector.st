accessing
contextInspector

	contextInspector == nil 
		ifTrue: [ | oop |
			oop := session receiver: oopType perform: 'contextInspector'.
			contextInspector := GsOBBrowser session: session oopType: oop].
	^contextInspector