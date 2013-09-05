updating
updateForStart

	self root updateForStart.
	self navigationPanel columns first signalSelectionChanged.
	self signalRefresh