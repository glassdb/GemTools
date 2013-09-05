execution
execute
	| fragment |
	fragment := UIManager default request: 'Method Name Fragment:'.
		fragment isEmptyOrNil ifFalse: [ 
			| session names theNameOrNil | 
			session := self session.
			names := session jadeServer findMethodNamesMatching: fragment withBlanksTrimmed.
			(theNameOrNil := self selectOneNameFrom: names noNamesMatchingString: 'No method names matching ' , fragment)
				ifNotNil: [ session executeString: 'OBImplementorsBrowser browseRoot: (OBMethodNode on: (MethodReference class: Object selector: ', theNameOrNil asSymbol printString, '))' ]]
			