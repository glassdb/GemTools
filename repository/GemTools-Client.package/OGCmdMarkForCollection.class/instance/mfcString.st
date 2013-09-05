private
mfcString

	^'OBPlatform current doAutoCommit.
	[ SystemRepository markForCollection ] 
	on: Error, Warning
	do: [:ex |
          ((ex isKindOf: Warning) or: [(ex gsNumber == 3020) or: [ex gsNumber == 3006]])
            ifTrue: [', self freeSpaceLogEntryString, ']
            ifFalse: [ ex pass ]].
'