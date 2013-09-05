printing
printOn: aStream
	[(self gsPerform: 'printString') printOn: aStream] 
		on: Error 
		do: [:ex | | title |
			title := self class name.
			aStream
				nextPutAll: (title first isVowel ifTrue: ['an '] ifFalse: ['a ']);
				nextPutAll: title].