building
buildOn: aBuilder
	^ aBuilder 
		scroller: self 
		with: [ self columns do: [:ea | ea buildOn: aBuilder]]