styler
setText: aText
	
	self okToStyle ifFalse:[^self privateSetText: aText asLocalObjectCopy].
	self privateSetText: (styler format: aText asLocalObjectCopy asText).
	styler style: textMorph contents