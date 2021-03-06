OmniBrowser
runArrayInfoFor: aText
	"Single round trip for Text information"

	| runArray runs values  |
	runArray := aText runs.
	runs := runArray runs collect: [:ea | ea printString ].
	values := Array new: runs size.
	1 to: runArray values size do: [:i | | ar stream |
		ar := runArray values at: i.
		stream := WriteStream on: String new.
		stream nextPutAll: ar size printString.
		ar do: [:ea | | cn |
			cn := ea class == TextColor 
				ifTrue: ['TC'] 
				ifFalse: [ea class == TextEmphasis 
					ifTrue: ['TE']
					ifFalse: [self error: 'Unknown class:', ea class name]].
			stream tab; nextPutAll: cn; tab; nextPutAll: ea attribute asString ].
		values at: i put: stream contents].
	^self stringFromCollection: {runs size printString }, runs, values