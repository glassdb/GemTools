private
updateSpecsFor: packageNames
	| updateDict |
	updateDict := OGUpdateSpec updateDict.
	^packageNames collect: [:version | updateDict at: version ifAbsent: [OGUpdateSpec named: version ] ].
