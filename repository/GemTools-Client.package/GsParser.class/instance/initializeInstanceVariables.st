as yet unclassified
initializeInstanceVariables
	| string |
	instanceVariables := classOrMetaClass notNil 
		ifTrue: [ | s |
			s := ivCache at: classOrMetaClass ifAbsent: [ nil ].
			s == nil
				ifTrue: [ 
					string := session jadeServer allInstVarNamesFor: classOrMetaClass.	
					(string isKindOf: OopType) 
						ifTrue: [ s := Set new ]
						ifFalse: [
							string 
								ifNil: [ s := Set new ] 
								ifNotNil: [
									(string isKindOf: String)
										ifTrue: [ s := string gsSubStrings2: Character tab ]
										ifFalse: [s := Set new] ]].
					ivCache at: classOrMetaClass put: s ].
			s]
		ifFalse: [Set new]