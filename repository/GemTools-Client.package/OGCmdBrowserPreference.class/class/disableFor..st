accessing
disableFor: aSession
	self preferenceAt: self preference put: false for: aSession
	