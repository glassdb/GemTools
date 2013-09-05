accessing
defaultLabel

	defaultLabel ~~ nil ifTrue: [ ^defaultLabel ].
	defaultLabel := (self session receiver: self oopType perform: 'defaultLabel'), ' - ', self session windowLabel.
	^defaultLabel