as yet unclassified
asLocalObjectCopy
	| replicate string oops |
	replicate := OrderedCollection new.
	string := session jadeServer oopInfoFor: self.
	oops := string gsSubStrings2: Character tab.
	1 to: oops size by: 2 do: [:i | | oop proxyClassName val |
		oop := oops at: i.
		proxyClassName := oops at: i + 1.
		(proxyClassName = 'String' or: [proxyClassName = 'Symbol' or: [ proxyClassName = 'Unicode7' ]])
			ifTrue: [
				val := oop.
				proxyClassName = 'Symbol' ifTrue: [val := val asSymbol]]
			ifFalse: [ val := GsObject subClassObjectInSession: session oopType: (session library oopTypeFor: oop asNumber) proxyClassName: ('Gs', proxyClassName) ].
		replicate add: val].
	^replicate