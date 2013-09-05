execution
execute

	Transcript cr; show: '---Starting mark for collect. ('; print: TimeStamp now; show: ')'.
	Transcript cr; tab; show: (self session executeString: self mfcString) withSqueakLineEndings.
	Transcript cr; show: '---Finished mark for collect. ('; print: TimeStamp now; show: ')'.
