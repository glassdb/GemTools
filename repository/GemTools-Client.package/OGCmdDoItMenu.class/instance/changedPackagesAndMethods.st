expressions
changedPackagesAndMethods
	| result session |
	session := self session.
	result := (session executeString:  '| stream |
		stream := WriteStream on: String new.
		(MCWorkingCopy allManagers select: [:ea |  ea modified ])
			do: [:each | | patch repo allRepos |
				allRepos := each repositoryGroup repositories.
				repo := allRepos detect: [:each | each isKindOf: MCHttpRepository] ifNone: [ nil ].
				repo isNil ifTrue: [repo := allRepos detect: [:each | each isKindOf: MCFileBasedRepository] ifNone: [ nil ]].
				repo isNil
					ifFalse: [
						stream nextPutAll: ''Package: '', each ancestry ancestorString; cr.
						patch := each changesRelativeToRepository: repo.
						patch operations do: [:op | stream nextPutAll: op summary; cr].
						stream cr ] ].
		stream contents ') asString.
	UIManager default edit: result withSqueakLineEndings label: 'Changed packages & methods' accept: nil