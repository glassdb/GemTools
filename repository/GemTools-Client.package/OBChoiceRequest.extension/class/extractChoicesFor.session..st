*gemTools-client
extractChoicesFor: requestOop session: session

	| labels values lines |
	labels := (session jadeServer choiceLabelsFor: requestOop ) gsSubStrings2: Character tab.
	values := ((session jadeServer choiceValuesFor: requestOop ) gsSubStrings2: Character tab) 
				collect: [:ea | session library oopTypeFor: ea ].
	lines := ((session jadeServer choiceLinesFor: requestOop ) gsSubStrings2: Character tab) 
				collect: [:ea | ea asInteger ].
	^Array with: labels with: values with: lines