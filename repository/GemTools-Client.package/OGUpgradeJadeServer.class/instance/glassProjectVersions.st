GLASS server updating
glassProjectVersions

	^ConfigurationOfGLASS project versions  reverse reject: [:version | 
		(version blessing == #baseline) or: [ version blessing == #broken] ]