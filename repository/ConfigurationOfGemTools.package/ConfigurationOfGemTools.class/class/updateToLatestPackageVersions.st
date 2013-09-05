development support
updateToLatestPackageVersions
	"Update the mcz file versions for current version of the configuration."

	"self updateToLatestPackageVersions"

	<apiDocumentation>
	((Smalltalk at: #MetacelloToolBox)
		updateDevelopment: #development
		for: self name asString
		updateProjects: false
		description: '') isEmpty
		ifTrue: [ self inform: 'All specs up to date' ]