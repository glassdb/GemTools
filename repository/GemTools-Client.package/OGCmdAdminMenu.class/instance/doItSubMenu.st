sub menus
doItSubMenu
	| menu |
	menu := MenuMorph new.
(OGCmdDoItMenu organization listAtCategoryNamed: #expressions) do: [:selector |.
		self addCommand: OGCmdDoItMenu selector: selector label: (OGCmdDoItMenu toLabel: selector) to: menu].
	^menu
	