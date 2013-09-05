GCI Tests
testGciLongToOop

	| x y |
	#(-536870912 -999 -11 -1 0 1 7 65536 536870911) do: [:each | 
		self assert: (y := library localFor: (x := library apiGciLongToOop: each)) = each.
	].
