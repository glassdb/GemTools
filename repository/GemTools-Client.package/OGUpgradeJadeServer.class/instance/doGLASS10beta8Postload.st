version loading
doGLASS10beta8Postload
	"For the time being we need to explicitly load ConfigurationOfGoferProjectLoader, because the initialization of 
	 GoferProjectLoader is dependent upon fairly recent mods to GLASS core, which can't be loaded _BEFORE_
	 ConfigurationOfGoferProjectLoader. See http://code.google.com/p/glassdb/issues/detail?id=105 for current
	 status"

	System commitTransaction.
	((Smalltalk at: #Gofer) new)
		gemsource: 'MetacelloRepository';
		package: 'ConfigurationOfGoferProjectLoader';
		load.
	(Smalltalk at: #ConfigurationOfGoferProjectLoader) project currentVersion == nil
		ifTrue: [ ((Smalltalk at: #ConfigurationOfGoferProjectLoader) project version: '1.0-alpha2.1') load ].
	System commitTransaction