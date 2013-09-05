callbacks
labelString

	^self isLoggedIn 
		ifTrue: [ self defaultLabel, ': ', self currentNode selectedWorkspaceName  , ' - ', self session windowLabel ]
		ifFalse: [ self defaultLabel, ' - G/S[not logged in]' ].
	
