actions
basicLogin
	"get logged into without initializing the jade server"
	self isLoggedIn ifTrue: [ ^self ].
	^self basicLogin: false