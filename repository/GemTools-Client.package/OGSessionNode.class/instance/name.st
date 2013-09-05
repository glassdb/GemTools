accessing
name

	| str |
	str := self sessionDescription name.
	self isLoggedIn
		ifTrue: [ str := str, ' GS[', self session number printString, ']' ].
	^str