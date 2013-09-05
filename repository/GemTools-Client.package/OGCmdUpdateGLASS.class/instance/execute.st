execution
execute

	| repoUrl selectedSpec packageNames |
	repoUrl := GsSystem glassServerUrl.
	packageNames := self session jadeServer 
							packageNamesFor: GsSystem serverPackageName
							branch: GsSystem glassBranch 
							in: repoUrl.
	packageNames := packageNames gsSubStrings2: Character tab.
	packageNames addFirst: '1.0-beta.8'.
	packageNames isEmpty ifTrue: [^self inform: 'GLASS is up to date'].
	selectedSpec := self choosePackageVersionFrom: packageNames.
	selectedSpec ifNil: [ ^self ].
	target hasSessionWindows 
		ifTrue: [
			(OBConfirmationRequest prompt: 'Are you sure you want to Update GLASS?
			Your G/S windows will be closed automatically.' confirm: 'Yes' cancel: 'No') == true 
				ifFalse: [ ^self ]].
	target closeAllSessionWindows.
	self updateTo: selectedSpec version from: repoUrl