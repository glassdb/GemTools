execution
execute
	(UIManager default request: 'Enter Substring:')
		ifNotNil: [:fragment | self session executeString: 'SystemNavigation default browseMethodsWithCaseSensitiveString: ', fragment printString ]
			