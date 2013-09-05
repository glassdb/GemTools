updating
windowIsClosing

	self interruptedProcess == nil ifTrue: [^ self].
	self interruptedProcess terminate.
	interruptedProcess := nil.
