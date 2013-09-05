accessing
sessionDescription

	sessionDescription == nil 
		ifTrue: [
			sessionDescription := OGApplianceSessionDescription new
				name: 'Glass';
				stoneHost: 'glass';
				stoneName: 'seaside';
				yourself  ].
	^sessionDescription