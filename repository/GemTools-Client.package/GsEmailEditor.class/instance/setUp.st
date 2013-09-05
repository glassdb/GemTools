initialization
setUp
	from := session executeString: 'SendMail mailfrom'.
	to := GsSystem betaMailAddress.
	
	workArea := Morph new
		initialize;
		layoutPolicy: ProportionalLayout new;
		yourself.
	self
		setLabel: 'GemStone/S GLASS Bug Report';
		addMorph: workArea frame: (0@0 corner: 1@1).
	self addSendButton; addFrom; addTo; addSubject; addText.
	
	