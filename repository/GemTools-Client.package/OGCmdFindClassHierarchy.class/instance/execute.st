execution
execute
	| fragment |
	fragment := UIManager default request: 'Class Name Fragment:' initialAnswer: 'Object'.
	fragment isEmptyOrNil ifFalse: [
			| session names theNameOrNil | 
			session := self session.
			names := session jadeServer findClassNamesMatching: fragment withBlanksTrimmed.
			(theNameOrNil := self selectOneNameFrom: names noNamesMatchingString: 'No class names matching ' , fragment printString)
				ifNotNil: [ session executeStringNB: 'OBHierarchyBrowser openOnClass: ', theNameOrNil ]]