metacello loading
do10beta17MetacelloPreload
	MCWorkingCopy allManagers
		do: [ :wc | 
			wc packageName = 'Gofer'
				ifTrue: [ wc unload ] ].
	ConfigurationOfMetacello 
		bootstrapPackage: 'Gofer-Core-dkh.121' 
		from: 'http://seaside.gemstone.com/ss/metacello'.
	self doMetacelloPreload.
