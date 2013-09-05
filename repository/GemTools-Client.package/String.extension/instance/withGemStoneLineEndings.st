*gemTools-client-internet
withGemStoneLineEndings
	"assume the string is textual, and that CR, LF, and CRLF are all 
	valid line endings.  Replace each occurence with a single LF"

	| cr lf crlf inPos outPos outString lineEndPos newOutPos |
	cr := Character cr.
	lf := Character linefeed.
	crlf := CharacterSet new.
	crlf
		add: cr;
		add: lf.
	inPos := 1.
	outPos := 1.
	outString := String new: self size.
	[ 
	lineEndPos := self indexOfAnyOf: crlf startingAt: inPos ifAbsent: [ 0 ].
	lineEndPos ~= 0 ]
		whileTrue: [ 
			newOutPos := outPos + (lineEndPos - inPos + 1).
			outString
				replaceFrom: outPos
				to: newOutPos - 2
				with: self
				startingAt: inPos.
			outString at: newOutPos - 1 put: lf.
			outPos := newOutPos.
			inPos := ((self at: lineEndPos) = cr and: [ lineEndPos < self size and: [ (self at: lineEndPos + 1) = lf ] ])
				ifTrue: [ lineEndPos + 2 ]
				ifFalse: [ lineEndPos + 1 ]	"CRLF ending"	"CR or LF ending" ].	"no more line endings.  copy the rest"
	newOutPos := outPos + (self size - inPos + 1).
	outString
		replaceFrom: outPos
		to: newOutPos - 1
		with: self
		startingAt: inPos.
	^ outString copyFrom: 1 to: newOutPos - 1