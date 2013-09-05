environment
seasideBinDirectoryFor: sessionNode
	| path |
	path := sessionNode session executeString: 'GsFile _expandEnvVariable: ''GEMSTONE'' isClient: false'. 
	path ifNil: [^self defaultSeasideBinDirectory].
	^path ,'/seaside/bin/'