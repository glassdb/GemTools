version loading
mapGLASSConfigurationRepositories
	"have to force each of the Configurations to use http://seaside.gemstone.com/ss/MetacelloRepository"

	| configurations repository |
	configurations := #( 'ConfigurationOfXMLSupport' 'ConfigurationOfSwazoo2' 'ConfigurationOfPier' 'ConfigurationOfGsMisc' 'ConfigurationOfGoferProjectLoader' 'ConfigurationOfGsSeasideTesting28' 'ConfigurationOfSeaside28' 'ConfigurationOfSeaside28Examples' 'ConfigurationOfSeaside' 'ConfigurationOfGsHyper' 'ConfigurationOfGofer' 'ConfigurationOfGsMonticello' 'ConfigurationOfGsSqueakSource' 'ConfigurationOfSeaside30' 'ConfigurationOfGrease' 'ConfigurationOfGsScaffolding' 'ConfigurationOfMagritte' 'ConfigurationOfPierAddOns' 'ConfigurationOfGsCore' 'ConfigurationOfGsOB' 'ConfigurationOfMetacello' 'ConfigurationOfGLASS' 'ConfigurationOfGsSOAP' 'ConfigurationOfGsFastCGI').
	repository := MCHttpRepository
		location: 'http://seaside.gemstone.com/ss/MetacelloRepository'
		user: ''
		password: ''.
	MCWorkingCopy allManagers do: [:wc |
		(configurations includes: wc packageName) 
			ifTrue: [ | group |
				group := MCRepositoryGroup new.
				group addRepository: repository.
				wc repositoryGroup: group.]].
	MCWorkingCopy allManagers
		do: [ :wc | 
			(wc packageName beginsWith: 'ConfigurationOf')
				ifTrue: [ wc modified: false ] ].
