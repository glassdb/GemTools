morphic
windowIsClosing

	wantsStepsIn ifFalse: [ ^self ].
	hasChanges := false.
	self session isValid ifFalse: [ ^self ].
	[ self session receiver: self oopType perform: 'windowIsClosing' ] 
		on: Error 
		do: [:ex | Transcript cr; show: 'Error closing window: ', ex description ]
	