operations
addItemsToMenu: aMenu

	| string oopNil |
	string := session jadeServer menuItemsFor: oopType.
	oopNil := session library oopNil.
	(string gsSubStrings2: Character lf) do: [:str | | itemArray label cmd aSelector aBoolean aSymbol cmdOopType |
		itemArray := str gsSubStrings2: Character tab.
		itemArray isEmpty
			ifTrue: [aMenu addLine]
			ifFalse: [
				label := itemArray at: 1.
				cmdOopType := session library oopTypeFor: (itemArray at: 2).
				aSelector := (itemArray at: 3) asSymbol.
				cmdOopType = oopNil
					ifTrue: [ aMenu add: label action: aSelector ] 
					ifFalse: [
						cmd := GsOBCommand session: session oopType: cmdOopType.
						cmd owner: self.
						aBoolean := (itemArray at: 4) = 'true'.
						aSymbol := (itemArray at: 5) = 'nil' 
							ifTrue: [ nil ]
							ifFalse: [ (itemArray at: 5) asSymbol ].
						aMenu add: label target: cmd selector: aSelector enabled: aBoolean icon: aSymbol]]].
