callbacks
menu: aMenu shifted: aBoolean selection: aTextSelection 

	| menuOop m interval |
	interval := aTextSelection selectionForGemStone.
	menuOop := session 
		receiver: oopType 
			perform: 'menu:selection:last:string:' 
				withArguments: (Array with: aBoolean with: interval first with: interval last with: aTextSelection textForGemStone asString).
	m := GsOGMenu session: session oopType: menuOop.
	m owner: self.
	m addItemsToMenu: aMenu.
	^aMenu