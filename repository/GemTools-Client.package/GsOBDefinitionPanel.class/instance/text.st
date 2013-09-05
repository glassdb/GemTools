callbacks
text
	"Assume it's a String for now'"

	| res |
	text ~~ nil ifTrue: [ ^text ].
	text := ((res := session receiver: oopType perform: 'text') isKindOf: OopType)
		ifTrue: [GsObject subClassObjectInSession: session oopType: res]
		ifFalse: [res].
	text ~~ nil ifTrue: [text := text withSqueakLineEndings].
	^text