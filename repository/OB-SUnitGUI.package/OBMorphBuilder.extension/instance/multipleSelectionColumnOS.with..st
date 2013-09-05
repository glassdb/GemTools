*ob-sunitGUI
multipleSelectionColumnOS: aColumn with: aBlock
   	| pane |
     pane := self createPaneForColumnOS: aColumn with: #multipleSelectionListMorphForColumnOS:.
	current ifNotNil: [current pushPane: pane].
	^ self current: pane do: aBlock
