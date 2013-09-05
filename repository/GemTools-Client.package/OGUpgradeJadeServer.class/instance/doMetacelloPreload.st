metacello loading
doMetacelloPreload
	((Smalltalk at: #Gofer) new)
		gemsource: 'metacello';
		version: 'Metacello-Core-DaleHenrichs.361';
		version: 'Metacello-MC-DaleHenrichs.404';
		load.
	((Smalltalk at: #Gofer) new)
		gemsource: 'metacello';
		version: 'Metacello-Platform.gemstone-DaleHenrichs.16';
		load.
	((Smalltalk at: #Gofer) new)
		gemsource: 'MetacelloRepository';
		package: 'ConfigurationOfMetacello';
		load.
	((Smalltalk at: #Gofer) new)
		gemsource: 'MetacelloRepository';
		package: 'ConfigurationOfGofer';
		load.
