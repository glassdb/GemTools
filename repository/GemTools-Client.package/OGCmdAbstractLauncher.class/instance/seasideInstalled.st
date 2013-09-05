testing
seasideInstalled

	^self session executeString: 'Smalltalk at: #SeasidePlatformSupport ifAbsent: [ ^false ]. ^true'