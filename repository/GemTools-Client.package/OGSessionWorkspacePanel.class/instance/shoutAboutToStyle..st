callbacks
shoutAboutToStyle: aPluggableShoutMorph

	self isLoggedIn ifFalse: [ ^false ].
	(aPluggableShoutMorph styler isKindOf: GsTextStyler)
	ifTrue: [ 
		self session ~~ aPluggableShoutMorph styler session
			ifTrue: [ aPluggableShoutMorph styler initialize: self session ]]
	ifFalse: [aPluggableShoutMorph styler: ((GsTextStyler basicNew)
				initialize: self session;
				view: aPluggableShoutMorph;
				yourself)].
	aPluggableShoutMorph classOrMetaClass: nil.
	^ true