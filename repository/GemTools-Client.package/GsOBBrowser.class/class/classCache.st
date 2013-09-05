accessing
classCache

	ClassCache == nil ifTrue: [ ClassCache := WeakIdentityKeyDictionary new ].
	^ClassCache