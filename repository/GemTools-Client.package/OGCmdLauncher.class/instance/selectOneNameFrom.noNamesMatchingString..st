private
selectOneNameFrom: nameString noNamesMatchingString: noNamesMatchingString 
	| names |
	names := nameString gsSubStrings2: Character space.
	names isEmpty
		ifTrue: [
			self inform: noNamesMatchingString.
			^nil].
	^ names size = 1
		ifTrue: [names first]
		ifFalse: [| index | 
			index := UIManager default chooseFrom: names title: 'Please choose one:'.
			index > 0
				ifTrue: [names at: index]]