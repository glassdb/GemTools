execution
executeOldMetacelloUpdate

	| packageNames packages labels selectedSpec |
	packageNames := #('1.0-beta.8').
	packages := self updateSpecsFor: packageNames.
	labels := packages collect: [:ea | ea asString ].
	selectedSpec := self prompt: 'Choose version.'  chooseFrom: labels values: packages lines: #().
	selectedSpec ifNil: [ ^self ].
	target hasSessionWindows 
		ifTrue: [
			(OBConfirmationRequest prompt: 'Are you sure you want to Update GLASS?
			Your G/S windows will be closed automatically.' confirm: 'Yes' cancel: 'No') == true 
				ifFalse: [ ^self ]].
	target closeAllSessionWindows.
	self updateTo: selectedSpec version