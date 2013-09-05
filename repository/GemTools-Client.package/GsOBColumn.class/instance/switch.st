accessing
switch
	| switchOop |
	switch ~~ nil ifTrue: [ ^switch ].
	switchOop := session receiver: oopType perform: 'switch'.
	switch := GsOBSwitch session: session oopType: switchOop.
	switch column: self.
	^switch