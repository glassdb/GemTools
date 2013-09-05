initializing
session: aGciSession oopType: anOopType info: info

	| cache |
	session := aGciSession.
	windowSessionNumber := session number.
	oopType := anOopType.
	wantsStepsIn := session library localForSpecial: (session library oopTypeFor:  (info at: 1) asNumber).
	cache := self classCache.
	4 to: info size by: 2 do: [:i |  | oop cOop panel |
		oop := session library oopTypeFor: (info at: i).
		cOop := session library oopTypeFor: (info at: i+1).
		panel := (cache at: cOop) session: session oopType: oop.
		panel browser: self.
		panels add: panel].
	self clientSubscribe.