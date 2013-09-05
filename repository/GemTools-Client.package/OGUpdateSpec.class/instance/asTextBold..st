printing
asTextBold: boldTag
	^tag == boldTag 
		ifTrue: [self asString asText allBold]
		ifFalse: [self asString]