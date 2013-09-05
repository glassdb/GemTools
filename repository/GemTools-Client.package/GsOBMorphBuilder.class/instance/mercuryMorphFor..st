private
mercuryMorphFor: aMercuryPanel
	^ (GsOBPluggableTextMorph
		on: aMercuryPanel
		text: #text
		accept: #accept:notifying:
		readSelection: #selection
		menu: #menu:shifted:)
			font: Preferences standardCodeFont;
			hideScrollBarsIndefinitely;
			acceptOnCR: true;
			height: Preferences standardCodeFont height * 1.2;
			borderWidth: 1;
			vResizing: #rigid;
			hResizing: #spaceFill;
			yourself.