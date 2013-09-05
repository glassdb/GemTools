*gemTools-client
classicMercuryMorphFor: aMercuryPanel
	^ (OBPluggableTextMorph
		on: aMercuryPanel
		text: #text
		accept: #accept:notifying:
		readSelection: #selection
		menu: #menu:shifted:)
			font: Preferences standardCodeFont;
			hideScrollBarsIndefinitely;
			acceptOnCR: true;
			height: Preferences standardCodeFont height * 1.2;
			vResizing: #rigid;
			hResizing: #spaceFill;
			width: 235;
			borderWidth: 1;
			cellPositioning: #bottomLeft;
			yourself.