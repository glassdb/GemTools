execution
execute

	| version loadedVersion |
	loadedVersion := ConfigurationOfGemTools project currentVersion.
	ConfigurationOfGemTools project updateProject.
	version := self 
		chooseVersion: [:vrsn |
			"show current version and all versions later than current version except those that 
			 are #development versions"
			(vrsn blessing ~~ #baseline)
				and: [ loadedVersion == nil
					or: [ vrsn = loadedVersion
							or: [ (vrsn blessing ~~ #development)
										and: [ vrsn > loadedVersion ]]]]].
	version == #all 
		ifTrue: [ version := self chooseVersion: [:vrsn | true ] ].
	version == #descriptions
		ifTrue: [ ^self fullDescriptions ].
	version == nil ifTrue: [ ^self ].
	version load: ConfigurationOfGemTools lastMetacelloVersionLoad value.
	OBInformRequest message: version versionString, ' loaded.'