GLASS server updating
doVersionLoadFrom: loadedVersion to: version
	((loadedVersion versionNumber < '1.0-beta.8' asMetacelloVersionNumber) and: [ 
			version versionNumber >= '1.0-beta.8' asMetacelloVersionNumber ])
		ifTrue: [ "Updating to 1.0-beta.8 or beyond from pre 1.0-beta.8"
			| metacelloVersion |
			Transcript cr; show: 'Upgrading Metacello to version 1.0-beta.26.1'.
			metacelloVersion := ConfigurationOfMetacello project currentVersion.
			metacelloVersion versionNumber <= '1.0-beta.17' asMetacelloVersionNumber
				ifTrue: [ self do10beta17MetacelloPreload ]
				ifFalse: [ self doMetacelloPreload ].
			self mapGLASSConfigurationRepositories.
			System commitTransaction ].
	loadedVersion versionNumber = '1.0-beta.0' asMetacelloVersionNumber
		ifTrue: [ self doGLASS10beta0Preload ].
	"load basic Metacello packages for version 1.0-beta.31.1 bypassing Metacello ... necessary
	 to bypass Metacello bugs"
	self doBasicMetacelloLoad: version. 
	self forceMetacelloLoadDuring: [
		(ConfigurationOfGLASS project version: version versionString) load: #( 'Core' 'Monticello' 'Gofer Project Loader' ).
		(ConfigurationOfGLASS project version: version versionString) load ].
	self doGLASS10beta8Postload