private
preferenceAt: aSymbol
		^self session executeString: '(OBGemStonePlatform respondsTo: #preferencesDictionary) ifTrue: [ OBGemStonePlatform preferencesDictionary at: #', aSymbol asString, ' ifAbsent: [true ]] ifFalse: [ false ]'