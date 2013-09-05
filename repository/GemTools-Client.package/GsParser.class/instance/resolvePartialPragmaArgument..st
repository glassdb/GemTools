as yet unclassified
resolvePartialPragmaArgument: aString 
	"check if any valid pragma argument begins with aString"
	| response |
	(#('true' 'false' 'nil') anySatisfy: [:each | each beginsWith: aString]) 
		ifTrue: [^#incompleteIdentifier].
	"should really check that a matching binding is for a Class?"
	classOrMetaClass isBehavior 
		ifTrue: [
			classOrMetaClass theNonMetaClass withAllSuperclasses do: [:c | 
				(c environment hasBindingThatBeginsWith: aString) ifTrue: [^#incompleteIdentifier]]]
		ifFalse: [
			response := environment hasBindingThatBeginsWith: aString.
			(response isKindOf: Boolean) ifFalse: [ response := false ].
			response ifTrue: [^#incompleteIdentifier]].
	^#undefinedIdentifier