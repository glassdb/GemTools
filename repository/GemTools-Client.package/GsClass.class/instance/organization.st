Browser
organization

	organization isNil ifTrue: [
		organization := GsClassOrganizer 
			session: session
			class: self.
	].
	^organization.
