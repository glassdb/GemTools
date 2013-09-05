obsolete
stackOfSize: aSmallInteger 

	^self stack 
		copyFrom: 1
		to: (aSmallInteger min: stack size).
