private
filter: versions
	| mask |
	mask := GsSystem serverPackageName , '.', GsSystem glassBranch.
	^versions select: [:fName | fName beginsWith: mask ]