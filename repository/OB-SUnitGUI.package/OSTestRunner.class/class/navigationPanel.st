configuration
navigationPanel

	^ (OSMultipleSelectionColumnPanel minPanes: self minPanes maxPanes: self maxPanes)
		maxMultipleSelectionPanes: 2;
		yourself