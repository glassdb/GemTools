configuration
panels
	^ (Array with: self optionalButtonPanel with: self definitionPanel)
		reject: [:ea | ea isNil]