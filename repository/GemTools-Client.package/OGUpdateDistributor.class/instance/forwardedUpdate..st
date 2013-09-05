updating
forwardedUpdate: aString

	| info sym clientForwarderOop obj debug |
	debug := false.
	debug ifTrue: [ Transcript cr; show: 'forwardedUpdate:', aString ].
	info := aString gsSubStrings2: Character tab.
	1 to: info size by: 2 do: [:i | 
		sym := (info at: i) asSymbol.
		clientForwarderOop := session library oopTypeFromInteger: (info at: i + 1) asNumber. 
		obj := session clientObjectForwardedFrom: clientForwarderOop.
		debug ifTrue: [ Transcript cr; show: sym printString, '->', obj printString ].
		obj ~~ nil ifTrue: [ obj forwardedUpdate: sym ]].
	^nil