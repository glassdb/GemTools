execution
execute
	| selector |
	selector := UIManager default request: 'Enter Methodname:'.
	selector isEmptyOrNil ifFalse: [
		self session executeString: '(OBShowSenders of: (OBSelectorNode on: #' , selector, ')) execute']
			