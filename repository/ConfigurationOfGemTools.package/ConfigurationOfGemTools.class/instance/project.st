accessing
project

	| versionString projectAttributes |
	^ project ifNil: [
		"Bootstrap Metacello if it is not already loaded"
		self class ensureMetacello.
		"Construct Metacello project"
		project := (Smalltalk at: #MetacelloMCProject) new.
		projectAttributes := #().
		Smalltalk at: #SystemVersion ifPresent: [:cl |
			versionString := cl current version.
			(versionString beginsWith: 'Pharo') 
				ifTrue: [
					(versionString beginsWith: 'Pharo0.1')
						ifFalse: [ 
							projectAttributes := projectAttributes, #(#'pharo1.0Beta').
							((versionString beginsWith: 'Pharo-1.0') or: [versionString beginsWith: 'PharoCore1.0'])
								ifTrue: [ projectAttributes := projectAttributes, #(#'GemToolsForPharo1.0') ]
								ifFalse: [ projectAttributes := projectAttributes, #(#'GemToolsForPharo1.1') ] ]]].
		Smalltalk at: #OBNode ifAbsent: [ projectAttributes := projectAttributes, #(#'OBNotPresent') ].
		Smalltalk at: #SHParserST80 ifAbsent: [ projectAttributes := projectAttributes, #(#'ShoutNotPresent') ].
		project projectAttributes:  projectAttributes.
		(Smalltalk at: #MetacelloVersionConstructor) on: self project: project.
		project loadType: #linear]