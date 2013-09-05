*gemTools-client
gsSubStrings: separators 
	"Answer an array containing the substrings in the receiver separated 
	by the elements of separators.
	Adjusted algorithm to add empty elements to the collection."
	^separators size == 1 
		ifTrue: [self gsSubStrings2: separators first]
		ifFalse: [
	| char result sourceStream subString |
	(separators isString or:[separators allSatisfy: [:element | element isKindOf: Character]])
		ifFalse: [^ self error: 'separators must be Characters.'].
	sourceStream := ReadStream on: self.
	result := OrderedCollection new.
	subString := String new.
	[sourceStream atEnd]
		whileFalse: 
			[char := sourceStream next.
			(separators includes: char)
				ifTrue: [result add: subString copy.
						subString := String new]
				ifFalse: [subString := subString , (String with: char)]].
	subString notEmpty ifTrue: [result add: subString copy].
	result asArray]