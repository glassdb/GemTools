opening
open
	| res |
	res := super open.
	self announcer announce: (OBSelectionChanged column: self).
	^res