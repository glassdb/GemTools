callbacks
accept: aText notifying: aController

	| ans |
	[ans := session receiver: oopType perform: 'accept:notifying:' withArguments: (Array with: aText asString withGemStoneLineEndings with: oopType)] 
		on: GsCompileError 
		do: [:ex | 	| errorString array errorStart errorNote  |
			errorString := session jadeServer reportCompileErrors: ex tag args first.
			array := errorString gsSubStrings2: Character lf.
			array := array first gsSubStrings2: Character tab.
			errorStart := (array at: 2) asNumber.
			errorNote := (array at: 3) , '->'.
			selection := errorStart to: errorStart + errorNote size.
			aController 
				notify: errorNote
				at: errorStart
				in: aText ].
			
	^ans