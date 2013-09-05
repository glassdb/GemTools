private
choosePackageVersionFrom: packageNames

	| allLabel labels values answer releasedVersions allPackages |
	allPackages := self updateSpecsFor: packageNames.
	releasedVersions := allPackages select: [:spec | spec isBetaAtLeast ].
	releasedVersions isEmpty
		ifTrue: [
			^(self confirm: 'There are no new RELEASED versions. Would you like to select from all versions?')
				ifTrue: [  self chooseFromAllPackages: allPackages bold: #release ]
				ifFalse: [ nil ]].
	allLabel := 'All versions...'.
	labels := OrderedCollection with: allLabel.
	values := labels , releasedVersions.
	labels addAll: (releasedVersions collect: [:ea | ea asString]).
	answer := self prompt: 'Choose version.' chooseFrom: labels values: values lines: #(1).
	^answer = allLabel
		ifTrue: [ self chooseFromAllPackages: allPackages bold: #release ]
		ifFalse: [ answer ]