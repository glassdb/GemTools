callbacks
text
	| statusHex |
	text ~~ nil ifTrue: [ ^text ].
	text := session receiver: oopType perform: 'text'.
	statusHex := session receiver: oopType perform: 'statusHex'.
	morph ~~ nil ifTrue: [ morph color: (Color fromString: statusHex) ].
	^ text