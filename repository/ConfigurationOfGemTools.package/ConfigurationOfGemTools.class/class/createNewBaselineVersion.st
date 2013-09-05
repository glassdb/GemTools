development support
createNewBaselineVersion
	"Create a new baseline version based upon current version's baseline.
	 A new baseline should be created if new packages have been added or package dependencies have changed."

	"self createNewDevelopmentVersion"

	<apiDocumentation>
	| currentVersion existingBaselineVersionString baselineVersionNumber |
	currentVersion := self project currentVersion.
	existingBaselineVersionString := currentVersion importedVersions first.
	baselineVersionNumber := existingBaselineVersionString asMetacelloVersionNumber incrementMinorVersionNumber.
	(Smalltalk at: #MetacelloToolBox)
		createBaseline: baselineVersionNumber versionString
		for: self name asString
		from: existingBaselineVersionString
		description: ''