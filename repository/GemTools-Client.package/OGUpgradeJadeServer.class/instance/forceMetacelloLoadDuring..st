GLASS server updating
forceMetacelloLoadDuring: aBlock
	"force all Metacello package loads to succeed even when target package is dirty ... 'use the force wisely, my son'"

	Smalltalk 
		at: #MetacelloSkipDirtyPackageLoad
		ifPresent: [:cl |
			^[aBlock on: cl do: [:ex | ex resume: false ]] 
				on: Warning 
				do: [:ex | 
					Transcript cr; show: ex description.
					ex resume ]].
	aBlock value.