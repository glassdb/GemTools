private
staticHandlerInstalledString

	^'SessionTemps current at: #CommitOnAlmostOutOfMemoryStaticException ifAbsent: [ ^false ].
	^true'
