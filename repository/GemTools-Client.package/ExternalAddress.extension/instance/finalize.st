*gemTools-client
finalize
	"I am an executor (a copy) of an ExternalAddress that was just garbage collected.
	I must finalize. my mission is to free memory"
	
	self asInteger ~~ 0 ifTrue: [self free]