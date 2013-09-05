private
privatePerform: aSelector orSendTo: anObject

	Smalltalk at: #OGUpdateDistributor ifPresent: [:cl |	
		"map #execute to #clientExecute for OBUpdateConcentrator"
		aSelector == #execute 
			ifTrue: [ 
				[^session receiver: oopType perform: #clientExecute asString] 
					on: GsRuntimeError 
					do: [:ex | 
						((ex tag number = 2404 and: [ex tag args size >= 1 and: [(ex tag args at: 1) = 'clientExecute']]) or: 
							[ (ex tag number = 2010 and: 
								[ ex tag args size >= 2 and: 
									[((ex tag args at: 2) == #clientExecute) or: 
										["http://code.google.com/p/glassdb/issues/detail?id=250...3.0 support"
										(ex tag args at: 1) == #clientExecute]]]) ])
							ifTrue: [
								"#clientExecute Not understood, must be earlier version of GLASS, try again with #exeucte"
								^session receiver: oopType perform: aSelector asString ].
						ex pass ]]].
	session receiver: oopType perform: aSelector asString.
