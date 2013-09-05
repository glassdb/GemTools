execution
execute

	self sessionNode canUpdateGLASSServer
		ifTrue: [ "1.0-beta.0 and beyond"
			self session 
				receiver: self session createUpgradeServer 
				perform: #upgradeGLASSServer ]
		ifFalse: [ "pre 1.0-beta.0 server versions"
			self executeOldMetacelloUpdate ].
	self sessionNode resetGlassPackageName.
	self update