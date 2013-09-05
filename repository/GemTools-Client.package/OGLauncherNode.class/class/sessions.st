accessing
sessions

	Sessions == nil ifTrue: [ Sessions := OrderedCollection with: OGSessionNode new ].
	^Sessions