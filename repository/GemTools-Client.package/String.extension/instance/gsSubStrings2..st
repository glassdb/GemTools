*gemTools-client
gsSubStrings2: aCharacter 
  "Returns an Array of CharacterCollections in which each element represents a
   substring separated by aCharacter.  The result will include empty substrings when
   two adjacent separators exist, as well as if a separator is the first or last element."

	| result startIndex endIndex int mySize |
	result := OrderedCollection new.
	startIndex := 1.
	int := aCharacter asciiValue.
	mySize := self size.
	
	[endIndex := self class indexOfAscii: int inString: self startingAt: startIndex.
	endIndex == 0]
		whileFalse: [
			(endIndex == startIndex)
				ifTrue: [result add: self species new].
			(endIndex > startIndex)
				ifTrue: [result add: (self copyFrom: startIndex to: endIndex - 1)].
		    startIndex := endIndex + 1].
	
	(startIndex > mySize)
		ifFalse:[ result add: (self copyFrom: startIndex to: mySize)].
	^ result