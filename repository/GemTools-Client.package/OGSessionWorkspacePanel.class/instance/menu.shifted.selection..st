callbacks
menu: aMenu shifted: aBoolean selection: aTextSelection
	super menu: aMenu shifted: aBoolean selection: aTextSelection.
	self addMoreToMenu: aMenu.
	^ aMenu