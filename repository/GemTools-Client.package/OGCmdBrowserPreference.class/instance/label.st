accessing
label
	^(self preferenceAt: self preference) ifTrue: ['[x] ' , self baseLabel ] ifFalse: ['[o] ', self baseLabel]