testing
isLoggedIn

	^session ~~ nil and: [session isValid]