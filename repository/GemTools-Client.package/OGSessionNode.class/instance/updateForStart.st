updating
updateForStart

	self session ~~ nil 
		ifTrue: [ 
			self session release.
			session := nil ].
	self logout