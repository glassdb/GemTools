Session Tests
testSessionNumber

	| anotherSession |
	self assert: 0 < session number.
	anotherSession := GciSession new
		gemNRS: resource gemNRS;
		stoneNRS: resource stoneNRS;
		userID: 'DataCurator';
		yourself.
	[
		self 
			assert: (anotherSession login: resource password);
			assert: session number + 1 = anotherSession number;
			yourself.
	] ensure: [
		anotherSession logout.
	].	
