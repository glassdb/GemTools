as yet unclassified
resolvePragmaArgument: aString 
|resolved|
	(#('true' 'false' 'nil' ) includes: aString) ifTrue: [^ aString asSymbol].

	[(resolved := gemstonePlatform gsParserPragmaArgument: aString forClass: classOrMetaClass)
		ifNotNil:[^resolved]]
	on: Error do: [^nil].
	^ self resolvePartialPragmaArgument: aString
