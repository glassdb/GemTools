as yet unclassified
parseUnary
	| type |
	
	type := #unary.	
    	[self isName]
        	whileTrue: [
			self scanPast: type]
