private
staticHandlerUninstallString

	^
'System signalAlmostOutOfMemoryThreshold: -1.
Exception removeStaticException: (SessionTemps current at: #CommitOnAlmostOutOfMemoryStaticException).
SessionTemps current removeKey: #CommitOnAlmostOutOfMemoryStaticException.'