as yet unclassified
session: aSession from: aCollection 
	| instance |
	instance := (aSession jadeServer objectNamed: aCollection class name) new.
	aCollection
		do: [:object | instance add: object].
	^ instance