private
GLASS230dkh220PreDoit
	"Remove some of the obsolete packages to clean up tests, undefinedSymbols, and sent but not implemented"

	^'#(SwazooSeaside, Swazoo, SqueakSource, MonticelloConfigurations, TinyWiki) do: [:sym | | wc |
	wc := MCWorkingCopy registry at: (MCPackage named: sym asString) ifAbsent: [].
	wc ~~ nil ifTrue: [ 
		[ wc unload ] 
			on: Error 
			do: [:ex | 
				Transcript cr; show: ''Error during GLASS230dkh220PreDoit''.
				Transcript cr; show: ex description]]].'