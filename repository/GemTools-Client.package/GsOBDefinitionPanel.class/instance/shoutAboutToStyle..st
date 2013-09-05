as yet unclassified
shoutAboutToStyle: aPluggableShoutMorph 
	| classOrMetaClassOop |
	(aPluggableShoutMorph styler isKindOf: GsTextStyler)
	ifFalse: [aPluggableShoutMorph styler: ((GsTextStyler basicNew)
				initialize: session;
				view: aPluggableShoutMorph;
				yourself)].
	node == nil 
		ifTrue: 
			[node := browser currentNode.
			nodeType := session jadeServer shoutNode: node.
			nodeType == #method 
				ifTrue: 
					[classOrMetaClassOop := session receiver: node perform: 'theClass'.
					classOrMetaClassOop == nil 
						ifTrue: [ "anonymous method"
							aPluggableShoutMorph classOrMetaClass: nil.
							^ true]. 
					classOrMetaClass := GsClass session: session oopType: classOrMetaClassOop.
					aPluggableShoutMorph classOrMetaClass: classOrMetaClass.
					^ true].
			nodeType == #class 
				ifTrue: 
					[aPluggableShoutMorph classOrMetaClass: nil.
					^ true].
			^ false]
		ifFalse: 
			[nodeType == #method 
				ifTrue: 
					[aPluggableShoutMorph classOrMetaClass: classOrMetaClass.
					^ true].
			nodeType == #class 
				ifTrue: 
					[aPluggableShoutMorph classOrMetaClass: nil.
					^ true].
			^ false]