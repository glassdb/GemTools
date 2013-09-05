as yet unclassified
resolve: aString 
|resolved|
	(#('true' 'false' 'nil' ) includes: aString) ifTrue: [^ aString asSymbol].
	
	(#('self' 'super' 'true' 'false' 'nil' 'thisContext' ) includes: aString) 
		ifTrue: [^ aString asSymbol].
	(self isBlockTempName: aString) ifTrue: [^ #blockTempVar].
	(self isBlockArgName: aString) ifTrue: [^ #blockArg].
	(self isMethodTempName: aString) ifTrue: [^ #tempVar].
	(self isMethodArgName: aString) ifTrue: [^ #methodArg].
	(instanceVariables includes: aString) ifTrue: [^ #instVar].
	workspace 
		ifNotNil: [(workspace hasBindingOf: aString) ifTrue: [^ #workspaceVar]].
		
	[(resolved := gemstonePlatform gsParserResolve: aString forClass: classOrMetaClass)
		ifNotNil:[^resolved]]
	on: Error do: [^nil].

	^ self resolvePartial: aString