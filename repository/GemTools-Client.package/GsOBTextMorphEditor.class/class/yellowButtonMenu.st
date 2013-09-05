class initialization
yellowButtonMenu

	^ MenuMorph fromArray: {
			{'find...(f)' translated.					#find}.
			{'find again (g)' translated.				#findAgain}.
			{'set search string (h)' translated.		#setSearchString}.
			#-.
			{'do again (j)' translated.				#again}.
			{'undo (z)' translated.					#undo}.
			#-.
			{'copy (c)' translated.					#copySelection}.
			{'cut (x)' translated.						#cut}.
			{'paste (v)' translated.					#paste}.
			{'paste...' translated.					#pasteRecent}.
			#-.
			{'do it (d)' translated.					#doIt}.
			{'print it (p)' translated.				#printIt}.
			{'inspect it (i)' translated.				#inspectIt}.
			#-.
			{'accept (s)' translated.					#accept}.
			{'cancel (l)' translated.					#cancel}.
			#-.
		}.
