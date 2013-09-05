testing
isMBLoaded

	^self session executeString: 'Smalltalk at: #MBOBConfigurationBrowser ifAbsent: [ ^false ]. ^true'
