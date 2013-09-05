building
buildOn: aBuilder
	^ aBuilder horizontalGroupWith: [
		aBuilder horizontalGroupWith: [ 
			self receiverInspector panels do: [ :ea | ea buildOn: aBuilder ] ].
		aBuilder horizontalGroupWith: [ 
			self contextInspector panels do: [ :ea | ea buildOn: aBuilder ] ] ]