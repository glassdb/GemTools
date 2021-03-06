private
chooseVersion: selectBlock

	| versions loadedVersion labels desc |
	versions := (self gemtoolsVersions select: selectBlock) asOrderedCollection.
	loadedVersion := ConfigurationOfGemTools project currentVersion.
	labels := versions collect: [:vrsn | | blessing vrsnString | 
		blessing := vrsn blessing == #release ifTrue: [ '' ] ifFalse: [ ' <', vrsn blessing asString, '> ' ].
		desc := vrsn description.
		desc := (desc copyFrom: 1 to: (30 min: desc size)), '...'.
		vrsnString := vrsn versionString, blessing, ' - ',  desc.
		vrsn = loadedVersion ifTrue: ['* ', vrsnString] ifFalse: [ vrsnString ] ].
	labels addLast: 'Show All versions'.
	versions addLast: #all.
	labels addLast: 'Full version descriptions'.
	versions addLast: #descriptions.
	^OBChoiceRequest 
		prompt: 'Select version of GemTools Client to be loaded' 
		labels: labels 
		values: versions
		lines: { versions size - 2. }.
