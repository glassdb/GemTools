as yet unclassified
parseKeyword
	| keyword rangeIndices gemstoneResponse |
	self parseBinary.
	keyword := ''.
	rangeIndices := #().
	[self isKeyword]
		whileTrue: [keyword := keyword , currentToken.
			self rangeType: #keyword.
			"remember where this keyword token is in ranges"
			rangeIndices := rangeIndices copyWith: ranges size.
			self scanNext.
			self parseTerm.
			self parseBinary].
	keyword isEmpty
		ifFalse: [
			gemstoneResponse := internedSymbolCache
				at: keyword
				ifAbsent: [
					gemstoneResponse := gemstonePlatform hasInterned: keyword.
						(gemstoneResponse isKindOf: Boolean)
							ifFalse: [gemstoneResponse := false].
					gemstoneResponse
						ifTrue: [ 
							internedSymbolCache
								at: keyword 
								put: gemstoneResponse].
					gemstoneResponse].
			gemstoneResponse
				ifFalse: [rangeIndices
						do: [:i | (ranges at: i)
								type: #undefinedKeyword]]]