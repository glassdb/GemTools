callbacks
menu: aMenu 

	| menuOop m |
	menuOop := session receiver: oopType perform: 'menu'.
	m := GsOGMenu session: session oopType: menuOop.
	m owner: self.
	m addItemsToMenu: aMenu.
	^aMenu