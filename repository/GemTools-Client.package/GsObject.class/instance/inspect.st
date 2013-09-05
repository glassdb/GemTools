do-its
inspect

	[session jadeServer inspectIt: self] on: Error do: [:ex | ^super inspect ]