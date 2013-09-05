as yet unclassified
printOn: aStream 
	aStream nextPutAll: (self gsPerform: #className);
		 nextPutAll: ' - ';
		 nextPutAll: self selector