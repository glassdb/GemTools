metacello loading
doBasicMetacelloLoad: glassVersion
	"load basic Metacello packages for version 1.0-beta.31.1. 
	 To load GLASS 1.0-beta.8.7.1:
	  - Metacello must handle symbolic versions
	  - MetacelloSkipDirtyPackageLoad needs to be defined"
	
	glassVersion versionNumber < '1.0-beta.8.7.1' asMetacelloVersionNumber ifTrue: [ ^self ].
	ConfigurationOfMetacello project currentVersion versionNumber >= '1.0-beta.31.1' asMetacelloVersionNumber ifTrue: [ ^self ].
	((Smalltalk at: #Gofer) new)
		gemsource: 'metacello';
		version: 'Metacello-Base-DaleHenrichs.19';
		version: 'Metacello-Core-dkh.468';
		version: 'Metacello-MC-dkh.531';
		load.
	((Smalltalk at: #Gofer) new)
		gemsource: 'metacello';
		version: 'Metacello-Platform.gemstone-dkh.23';
		load.
