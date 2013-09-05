building
definitionPanel: aDefinitionPanel with: aBlock
	"see CodeHolder>>buildMorphicCodePaneWith:"
	| morph |
	morph := GsOBPluggableTextMorphWithShout 
				on: aDefinitionPanel
				text: #text
				accept: #accept:notifying:
				readSelection: #selection
				menu: #menu:shifted:.
	morph 
		font: Preferences standardCodeFont;
		borderWidth: 0;
		vResizing: #spaceFill;
		hResizing: #spaceFill.
		
	current ifNotNil: [current addMorphBack: morph].
	^ self current: morph do: aBlock