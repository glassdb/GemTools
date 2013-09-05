environment
dataDirectoryFor: sessionNode
	| path |
	(path := sessionNode dataDirectory) isEmpty not ifTrue: [ ^path ].
	path := sessionNode session executeString: 'GsFile _expandEnvVariable: ''GEMSTONE_DATADIR'' isClient: false'. 
	path ifNil: [^self defaultDataDirectory].
	^path ,'/'