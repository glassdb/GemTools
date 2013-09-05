private
workspaceNames
	| gsResult |
	self isLoggedIn ifFalse: [ ^#() ].
	gsResult := self session executeString: '| wsDict | 
					wsDict := ', self workspaceEntry ,' ifAbsent: [nil].
					wsDict isNil ifTrue: [nil] ifFalse: [| result |
					result := String new.
					wsDict keys do: [:aName | result add: aName] separatedBy: [result add: ''|''].
					result]'.
	(gsResult isNil or: [gsResult isEmpty]) ifTrue: [ ^ #('GLASS') ].
	^(gsResult subStrings: (Array with: $|)) asArray sort.