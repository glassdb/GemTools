execution
execute
	| fragment |
	fragment := UIManager default request: 'Enter Substring:'.
	fragment isEmptyOrNil ifFalse: [
		self session executeString: 'SystemNavigation default browseMethodsWithString: ', fragment printString ]
			