execution
execute
	| menu |
	menu := (MenuMorph entitled: 'Find...') defaultTarget: self.
	self addCommand: OGCmdFindClass to: menu.
	self addCommand: OGCmdFindClassHierarchy to: menu.
	self addCommand: OGCmdFindClassReferences to: menu.
	menu addLine.
	self addCommand: OGCmdFindMethod to: menu.
	self addCommand: OGCmdFindMethodWithString to: menu.
	self addCommand: OGCmdFindMethodReferences to: menu.
	self addCommand: OGCmdFindMethodWithCaseSensitiveString to: menu.
	menu popUpInWorld