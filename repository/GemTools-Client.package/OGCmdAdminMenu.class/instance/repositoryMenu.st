sub menus
repositoryMenu
	| menu |
	menu := MenuMorph new.
	self addCommand: OGCmdListBackupFiles to: menu.
	menu addLine.
	self addCommand: OGCmdMakeBackup to: menu.
	self addCommand: OGCmdRestoreFromBackupNoLogs to: menu.
	"self addCommand: OGCmdRestoreFromBackup to: menu."
	menu addLine.
	self addCommand: OGCmdMarkForCollection to: menu.
	^menu