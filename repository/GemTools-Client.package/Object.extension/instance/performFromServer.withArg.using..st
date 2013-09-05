*gemTools-client
performFromServer: aSelector withArg: argOop  using: aSession
	"optimized version to handle high volume of #changed messages"
	
	^self perform: aSelector with: argOop
