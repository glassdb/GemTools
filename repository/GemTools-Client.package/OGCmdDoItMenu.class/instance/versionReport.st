expressions
versionReport
	| result |
	result := self class versionReportIn: self session.
	UIManager default edit: result label: 'Version Report' accept: nil