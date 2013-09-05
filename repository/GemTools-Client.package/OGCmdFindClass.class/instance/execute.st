actions
execute
	| defaultString fragment |
	defaultString := Clipboard clipboardText.
	(defaultString isEmpty or: [defaultString size > 40]) ifTrue: [defaultString := 'Object'].
	fragment := UIManager default request: 'Class Name Fragment:' initialAnswer: defaultString asString.
	fragment isEmptyOrNil ifFalse: [
			| session names theNameOrNil | 
			session := self session.
			names := session jadeServer findClassNamesMatching: fragment withBlanksTrimmed.
			(theNameOrNil := self selectOneNameFrom: names noNamesMatchingString: 'No class names matching ' , fragment printString)
				ifNotNil: [ session executeStringNB: 'OBSystemBrowser openOnClass: ', theNameOrNil ]]