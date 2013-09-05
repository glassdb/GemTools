execution
execute

	self browser root addSession: (OGSessionNode new sessionDescription: target sessionDescription copy).
	self update