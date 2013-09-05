actions
closeAllSessionWindows

	windowSessionNumber == nil ifTrue: [ ^self ].
	SystemWindow allSubInstances do: [:ea | | theModel |
		theModel := ea model.
		((theModel respondsTo: #closeOnLogout) and: [theModel closeOnLogout])
			ifTrue: [
				theModel windowSessionNumber = windowSessionNumber
					ifTrue: [ea delete]]]