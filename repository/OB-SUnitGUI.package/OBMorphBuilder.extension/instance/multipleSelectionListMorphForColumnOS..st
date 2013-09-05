*ob-sunitGUI
multipleSelectionListMorphForColumnOS: aColumn
	^ (OSPluggableListMorphOfMany
		on: aColumn
		list: #list
		primarySelection: #selection
		changePrimarySelection: #selection:
		listSelection: #listSelectionAt:
		changeListSelection: #listSelectionAt:put:		
		menu: #menu:
		keystroke: #keystroke:from:)
			getListElementSelector: #listAt:;
			getListSizeSelector: #listSize;
			dragEnabled: aColumn dragEnabled;
			dropEnabled: aColumn dropEnabled;
			borderWidth: 0;
			autoDeselect: false;
			yourself