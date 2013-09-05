sub menus
seasideGemsMenu: controlSeasideClass
	| menu |
	menu := MenuMorph new.
	menu
		add: 'Start'
		target: (controlSeasideClass on: target for: requestor)
		selector: #start.
	menu
		add: 'Stop'
		target: (controlSeasideClass on: target for: requestor)
		selector: #stop.
	menu
		add: 'Restart'
		target: (controlSeasideClass on: target for: requestor)
		selector: #restart.
	^menu