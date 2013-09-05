execution
execute
	| repoUrl repo versions recentVersions packageName selectedVersions result answer idx |
	repoUrl := self repositoryUrl.
	packageName := self packageName.
	Cursor wait showWhile: [
		repo := MCHttpRepository
			location: repoUrl
			user:  ''
			password: ''.
		versions := self filter: repo allVersionNames].
	versions isEmpty ifTrue: [^ self inform: 'Can''t access monticello repository ' , repoUrl , '!' ].
	recentVersions := self selectRecentVersionsFrom: versions.
	answer := (recentVersions size = versions size)
		ifTrue: [
			OBChoiceRequest 
				prompt: 'Choose start version.' 
				labels: versions 
				values: versions ]
		ifFalse: [ recentVersions last ].
	answer ifNil: [^self].
	Cursor wait showWhile: [
		idx := versions indexOf: answer.			 
		result := WriteStream on: Text new.
		selectedVersions := versions copyFrom: 1 to: idx.
		selectedVersions do: [:fName | | info |
			info := (repo versionReaderForFileNamed: fName ,'.mcz') info.
			result nextPutAll: info name asText allBold; nextPutAll: ' [', info timeString, ']'; cr.
			result nextPutAll: info message; cr; cr.] displayingProgress: 'Extracting change log ...' ].
	UIManager default edit: result contents label: self longDescription accept: nil
	

	
