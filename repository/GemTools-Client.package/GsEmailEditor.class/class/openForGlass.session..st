opening
openForGlass: glassVersion session: session
	| newWindow |
	newWindow := self new.
	newWindow glassVersion: glassVersion; session: session.
	newWindow setUp; openInWorld.
	