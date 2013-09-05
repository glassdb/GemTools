callbacks
keystroke: aChar from: aMorph

	session 
		receiver: oopType 
		perform: 'keystroke:from:' 
		withArguments: (Array with: aChar with: nil).
