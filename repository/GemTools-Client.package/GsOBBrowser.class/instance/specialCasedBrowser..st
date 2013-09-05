private
specialCasedBrowser: info

	| browserClass cOop |
	cOop := session library oopTypeFor: (info at: 3).
	browserClass := self classCache at: cOop ifAbsent: [ nil ].
	({GsMBOBConfigurationBrowser. GsMDConflictBrowser. GsOSTestRunner. GsOTBasicInspector. GsOTChasingInspector. GsOTWorkspace} includes: browserClass)
		ifTrue: [ ^browserClass basicNew initialize session: session oopType: oopType info: info].
	^self error: 'incorrect special case'
