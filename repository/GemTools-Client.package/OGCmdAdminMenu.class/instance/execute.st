execution
execute
	| menu |
	menu := (MenuMorph entitled: 'Admin...') defaultTarget: self.
	menu add: 'Repository' subMenu: self repositoryMenu.
	self seasideInstalled
		ifTrue: [ 
			menu add: 'Seaside gems' subMenu: self seasideGemsMenu.
			menu addLine ]
		ifFalse: [
			self seaside30Installed
				ifTrue: [ 
					menu add: 'Seaside gems' subMenu: self seaside30GemsMenu.
					menu addLine ]].
	menu add: 'DoIt...' subMenu: self doItSubMenu.
	menu addLine.
	menu add: 'Browser Preferences' subMenu: self browserPrefsMenu.
	menu addLine.
	self addCommand: OGCmdToggleCommitOnAlmostOutOfMemory to: menu.
	self addCommand: OGCmdTogglePopUpOnDebug to: menu.
	menu addLine.
	self addCommand: OGCmdSendBugReport to: menu.

	menu popUpInWorld