packages
clientPackage
	^MCWorkingCopy registry at: (MCPackage named: self clientPackageName) ifAbsent: [ nil ].