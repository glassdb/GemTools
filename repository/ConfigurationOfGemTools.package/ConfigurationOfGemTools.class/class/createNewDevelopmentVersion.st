development support
createNewDevelopmentVersion
	"Create a new development version using current version as model."

	"self createNewDevelopmentVersion"

	<apiDocumentation>
	| currentVersion developmentVersion |
	currentVersion := self project currentVersion.
	developmentVersion := currentVersion versionNumber copy incrementMinorVersionNumber.
	(Smalltalk at: #MetacelloToolBox)
		createDevelopment: developmentVersion versionString
		for: self name asString
		from: currentVersion versionString
		imports: currentVersion importedVersions
		description: ''