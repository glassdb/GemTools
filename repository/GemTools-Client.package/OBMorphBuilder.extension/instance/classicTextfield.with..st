*gemTools-client
classicTextfield: aMercuryPanel with: aBlock 
	| morph |
	morph := self classicMercuryMorphFor: aMercuryPanel.
	morph color: Color white.
	current ifNotNil: 
			[current addMorphBack: morph.
			self current: morph do: aBlock].
	^morph