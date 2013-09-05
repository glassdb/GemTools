conversion
asLocalObjectCopy

	| str string info runsSize runArray runs values infoIndex |
	clientText ~~ nil ifTrue: [^clientText].
	str := self string.
	string := session jadeServer runArrayInfoFor: self.
	info := string gsSubStrings2: Character tab.
	runsSize := (info at: 1) asInteger.
	runs := Array new: runsSize.
	infoIndex := 1.
	1 to: runsSize do: [:i | runs at: i put: (info at: infoIndex + i) asInteger ].
	values := Array new: runsSize.
	infoIndex := 1 + runsSize.
	1 to: runsSize do: [:i | | arSize vals |
		arSize := (info at: infoIndex + 1) asInteger.
		vals := Array new: arSize.
		infoIndex := infoIndex + 1.
		1 to: arSize do: [:j | | className attr textAttribute |
			className := info at: infoIndex + 1.
			attr := info at: infoIndex + 2.
			className = 'TC'
				ifTrue: [ textAttribute := TextColor color: (Color fromString: attr) ]
				ifFalse: [
					className = 'TE'
						ifTrue: [ textAttribute := TextEmphasis new emphasisCode: attr asInteger]
						ifFalse: [self error: 'Unknown text class: ', className printString]].
			vals at: j put: textAttribute.
			infoIndex := infoIndex + 2].
		values at: i put: vals].
	runArray := RunArray runs: runs values: values.
	clientText := Text string: str runs: runArray.
	^clientText