testing
isActive
	^ super isActive and: [ target isLoggedIn ]