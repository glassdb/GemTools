private
chooseFromAllPackages: packages bold: boldTag

	| packageNames |
	packageNames := packages select: [:spec | spec isLoadable].
	packageNames := packageNames collect: [:spec | spec asTextBold: boldTag ].
	^self prompt: 'Choose version.'  chooseFrom: packageNames values: packages lines: #()
	
