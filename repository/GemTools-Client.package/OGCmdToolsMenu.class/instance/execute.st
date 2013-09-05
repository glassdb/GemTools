execution
execute
	| menu |
	menu := (MenuMorph entitled: 'Tools...') defaultTarget: self.
	self addCommand: OGCmdOpenSystemBrowser to: menu.
	self isSymbolListBrowserLoaded
		ifTrue: [ self addCommand: OGCmdOpenSymbolListBrowser to: menu ].
	self addCommand: OGCmdOpenWorkspace to: menu.
	self addCommand: OGCmdOpenFileBrowser to: menu.
	self addCommand: OGCmdOpenProcessBrowser to: menu.
	target supportsInspectingUndefined
		ifTrue: [ 
			menu addLine.
			self addCommand: OGCmdInspectUndefinedSymbols to: menu.
			self addCommand: OGCmdInspectSentButNotImplemented to: menu ].
	menu addLine.
	self addCommand: OGCmdOpenTestRunner to: menu.
	self addCommand: OGCmdOpenMonticello to: menu.
	self isMBLoaded
		ifTrue: [ self addCommand: OGCmdOpenMetacello to: menu ].
	self isMC2Loaded
		ifTrue: [
			menu addLine.
			self addCommand: OGCmdMC2ProjectBrowser to: menu].
	menu popUpInWorld