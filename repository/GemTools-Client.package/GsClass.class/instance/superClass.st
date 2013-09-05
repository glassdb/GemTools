Accessors
superClass

	superClass isNil ifTrue: [
		| newOopType |
		newOopType := self gsPerform: 'superClass'.
		newOopType notNil ifTrue: [
			superClass := GsClass
				session: session
				oopType: newOopType.
		].
	].
	^superClass.
	