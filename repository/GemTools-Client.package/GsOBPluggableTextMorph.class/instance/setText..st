as yet unclassified
setText: aText
	scrollBar setValue: 0.0.
	textMorph
		ifNil: [textMorph := self textMorphClass new
						contents: aText asLocalObjectCopy wrappedTo: self innerBounds width-6.
				textMorph setEditView: self.
				scroller addMorph: textMorph]
		ifNotNil: [textMorph newContents: aText asLocalObjectCopy].
	self hasUnacceptedEdits: false.
	self setScrollDeltas.