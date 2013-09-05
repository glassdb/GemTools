sub menus
browserPrefsMenu
	| menu |
	menu := MenuMorph new defaultTarget: self.
	OGCmdBrowserPreference subclasses
		do: [:cl | self addCommand: cl to: menu.].
	menu addLine.
	menu 
		add: 'Enable all'
		target: self
		selector: #enableAll.
	menu 
		add: 'Disable all'
		target: self
		selector: #disableAll.
	^menu