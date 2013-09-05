accessing
usePopUpOnDebug
	"If true, bring up a PopUpMenu which allows one to debug the Squeak stack."

	UsePopUpOnDebug == nil ifTrue: [ UsePopUpOnDebug := false ].
	^UsePopUpOnDebug