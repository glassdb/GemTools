accessing
bugReportInfoFor: aSession current: packageName
	| strm |
	strm := WriteStream on: String new.
	strm print: Date today; space; print: Time now; cr.
	strm cr.
	strm nextPutAll: 'Client VM: ';
		nextPutAll:  SmalltalkImage current platformName asString;
		nextPutAll: ' - ';
		nextPutAll: SmalltalkImage current asString;
		cr.
	strm nextPutAll: 'Client Image: ';
		nextPutAll:  SystemVersion current version asString;
		nextPutAll: ' [';
		nextPutAll: SmalltalkImage current lastUpdateString asString;
		nextPutAll: ']';
		cr.
	strm nextPutAll: 'GemTools Client: ';
		nextPutAll:  GsSystem clientVersionName;
		cr.
	strm nextPutAll: 'GLASS: ';
		nextPutAll:  packageName;
		cr; cr.
	strm nextPutAll: '===== GLASS Version Report ============================================'; 
		cr;
		nextPutAll: (OGCmdDoItMenu versionReportIn: aSession);
		cr.
	strm nextPutAll: '===== Client Version Report ============================================'; 
		cr;
		nextPutAll: (OGCmdDoItMenu showDictionaryReportFor: 'System clientVersionReport' in: aSession);
		cr.
	strm nextPutAll: '===== Stone Version Report ==========================================='; 
		cr;
		nextPutAll: (OGCmdDoItMenu showDictionaryReportFor: 'System stoneVersionReport' in: aSession); 
		cr.
	strm nextPutAll: '===== Preferences ============================================';
		nextPutAll:  (self preferencesReportFor: aSession);
		cr.
	^strm contents