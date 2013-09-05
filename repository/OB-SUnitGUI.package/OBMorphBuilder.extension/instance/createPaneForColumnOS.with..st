*ob-sunitGUI
createPaneForColumnOS: aColumn with: listSelector
	| pane |
	pane := OBPane new.
	pane 
		model: aColumn;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		clipSubmorphs: true;
		color: Color transparent;
		cellInset: 0;
		borderWidth: 0;
		layoutPolicy: ProportionalLayout new;
		addList: (self perform: listSelector with: aColumn).
		
	^pane	