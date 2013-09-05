accessing
versionReportIn: aSession
	
	^(aSession executeString:  '| result count |
			result := String new.
			count := 1.
			((Object allSubclasses select: [:cl | 
				cl isMeta not and: [ cl isMetacelloConfig and: [cl name asString beginsWith: ''ConfigurationOf'' ]]]) 
					sort: [:a :b | a name <  b name ]) 
						collect: [:each | | cv |
							cv := each project currentVersion.
							cv ~~ nil
								ifTrue: [ 
									result add: (count printString, ''. ''). 
									result add: each name asString, ''	'', cv versionNumber printString, ''	'', cv blessing printString, (String with: Character cr).
									count := count + 1 ]].
			result') asString