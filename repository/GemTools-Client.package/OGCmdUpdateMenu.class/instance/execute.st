execution
execute
	| menu |
	menu := (MenuMorph entitled: 'Update...') defaultTarget: self.
	self addCommand: OGCmdUpdateGLASSClient to: menu.
			menu addLine.
	target isLoggedIn
		ifTrue: [ 
			self sessionNode usingMetacello
				ifTrue: [ self addCommand: OGCmdUpdateGLASSServer to: menu ]
				ifFalse: [ 
					self addCommand: OGCmdHistoryGLASSServer to: menu.
					menu addLine.
					self addCommand: OGCmdUpdateGLASS to: menu.
					self addCommand: OGCmdRecentHistoryGLASSServer to: menu ]].
	menu popUpInWorld