actions
logout

	session ~~ nil 
		ifTrue: [
			session logout.
			workspaceNode := session := nil].
	windowSessionNumber ~~ nil
		ifTrue: [ 
			self closeAllSessionWindows.
			windowSessionNumber := nil ].
	usingMetacello := backupFileName := glassPackageName := nil.
