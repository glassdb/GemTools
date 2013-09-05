as yet unclassified
resolvePartial: aString 
	"check if any identifier begins with aString"
	
	(#('self' 'super' 'true' 'false' 'nil' 'thisContext') anySatisfy: [:each | each beginsWith: aString]) 
		ifTrue: [^#incompleteIdentifier].
	(self isIncompleteBlockTempName: aString) ifTrue: [^#incompleteIdentifier].
	(self isIncompleteBlockArgName: aString) ifTrue: [^#incompleteIdentifier].
	(self isIncompleteMethodTempName: aString) ifTrue: [^#incompleteIdentifier].
	(self isIncompleteMethodArgName: aString) ifTrue: [^#incompleteIdentifier].
	(instanceVariables anySatisfy: [:each | each beginsWith: aString]) ifTrue: [^#incompleteIdentifier].
	workspace 
		ifNotNil: [(workspace hasBindingThatBeginsWith: aString) ifTrue: [^#incompleteIdentifier]].
	classOrMetaClass isBehavior 
		ifTrue: [ | resolved |
			(resolved := gemstonePlatform gsParserResolvePartial: aString forClass: classOrMetaClass) 
				ifNotNil:[^resolved]].
	^#undefinedIdentifier