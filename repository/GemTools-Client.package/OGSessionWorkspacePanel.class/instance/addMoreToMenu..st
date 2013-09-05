callbacks
addMoreToMenu: aMenu

	| items |
	self browser currentNode isLoggedIn ifFalse: [ ^self ].
	aMenu addLine.
	items :=  Array streamContents:
		[:stream |
		stream 	
			nextPut: (Array with: 'commit' translated with: #commitTransaction);
			nextPut: (Array with: 'abort' translated with: #abortTransaction)].
	items do: [:ea |
			  ea = #-
				ifFalse: [aMenu add: ea first action: ea second]
				ifTrue: [aMenu addLine]].
