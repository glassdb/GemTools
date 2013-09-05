*gemTools-client
gsTextarea: aDefinitionPanel with: aBlock 
	"see CodeHolder>>buildMorphicCodePaneWith:"

	| morph shoutInstalled morphClass |
	shoutInstalled := (Smalltalk classNamed: #SHTextStylerST80) notNil.
	morphClass := shoutInstalled 
				ifTrue: [GsOBPluggableTextMorphWithShout]
				ifFalse: [GsOBPluggableTextMorph].
	morph := morphClass 
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
	^self current: morph do: aBlock