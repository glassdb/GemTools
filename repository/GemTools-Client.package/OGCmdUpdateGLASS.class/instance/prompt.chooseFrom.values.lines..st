private
prompt: prompt chooseFrom: labels values: values lines: lines

	| menu selection |
	menu := MenuMorph entitled: prompt.
	selection := nil.
	1 to: labels size do: [:i | | label |
		label := labels at: i.
		menu 
			add: label
			target: [:v | selection := v ]
			selector: #value:
			argument: (values at: i).
		(lines includes: i) ifTrue: [menu addLine]  ].
	menu invokeModal.
	^selection