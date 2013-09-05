accessing
getText
	| strm |
	strm := WriteStream on: String new.
	strm nextPutAll: '===== Your comments ============================================'; cr.
	strm nextPutAll: '...'; cr.
	strm nextPutAll: '...'; cr.
	strm nextPutAll: '===== Your comments end ======================================='; cr.
	strm nextPutAll: '===== Backtrace ==================================================';	cr.
	strm nextPutAll: '...'; cr.
	strm nextPutAll: '...'; cr.
	strm nextPutAll: '===== Backtrace end ============================================='; cr.
	strm nextPutAll: (OGCmdBugReport bugReportInfoFor: session current: glassVersion).
	^strm contents