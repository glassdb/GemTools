menu messages
debugIt: aString in: aContext
	
	^self gsPerform: #debugIt:in: withArguments: (Array with: aString with: aContext).