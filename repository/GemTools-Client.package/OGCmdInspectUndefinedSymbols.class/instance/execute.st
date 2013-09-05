execution
execute

	self session executeStringNB: '| us undefined dict |
	us := UndefinedSymbolsTest new.
	us cleanUndefinedSymbols.
	(undefined := UndefinedSymbols keys) removeAllPresent: us specialCases.
	dict := Dictionary new.
	undefined do: [:undef | dict at: undef put: (UndefinedSymbols at: undef) ].
	dict isEmpty ifTrue: [ ^OBInformRequest message: ''Undefined Symbols is clean''].
	dict inspect'
