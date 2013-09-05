private
GLASS10beta8PostDoit
	"Load ConfigurationOfGLASS, load 'Dev' group from 1.0-beta.8, then update the standard contents of GLASS repository"

	^'| repository version |
repository := MCHttpRepository
	location: ''http://seaside.gemstone.com/ss/metacello''
	user: ''''
	password: ''''.
repository
	versionReaderForFileNamed: ''Gofer-Core-dkh.121.mcz''
	do: [:reader | 
		version := reader version.
		version load.
		version workingCopy repositoryGroup addRepository: repository ].
(Smalltalk at: #MetacelloProject ifAbsent: [  ]) ~~ nil
    ifTrue: [ | gofer |
	gofer := (Smalltalk at: #Gofer) new.
	#(''GemStone-MetacelloProject'' ''OB-Metacello'' ''Metacello-MetacelloProject'' ''Metacello-Platform''
		''Metacello-MC'' ''Metacello-Core'' ) do: [:pkg | gofer package: pkg ].
	gofer unload ].
	"manual boot of Metacello ... 1.0-beta.26.1"
	(Smalltalk at: #Gofer) new
		gemsource: ''metacello'';
		version: ''Metacello-Core-DaleHenrichs.361'';
		version: ''Metacello-MC-DaleHenrichs.400'';
		load.
	(Smalltalk at: #Gofer) new
		gemsource: ''metacello'';
		version: ''Metacello-Platform.gemstone-DaleHenrichs.16'';
		load.
	(Smalltalk at: #Gofer) new
		gemsource: ''MetacelloRepository'';
		package: ''ConfigurationOfGLASS'';
		load.
[ ((Smalltalk at: #ConfigurationOfGLASS) project  version: ''1.0-beta.8'') load ]
		on: Warning
		do: [:ex | 
			Transcript cr; show: ''Warning: '', ex messageText.
			ex resume ].

System commitTransaction ifFalse: [ nil error: ''Cannot commit after updating to 1.0-beta.8'' ].

"update the rest of the GLASS packages to 1.0-beta.8"
[ 
	(Smalltalk at: #Gofer) new
		gemsource: ''MetacelloRepository'';
		package: ''ConfigurationOfGoferProjectLoader'';
		load.
	((Smalltalk at: #ConfigurationOfGoferProjectLoader) project  version: ''1.0-alpha2.1'') load.
	
	(Smalltalk at: #Gofer) project load: ''GsMisc'' version: ''0.236''.
	(Smalltalk at: #Gofer) project load: ''GsSOAP'' version: ''0.232''.
	
	(Smalltalk at: #Gofer) project load: ''Seaside28'' version: ''2.8.4.4''.
	(Smalltalk at: #Gofer) project load: ''Seaside28Examples'' version: ''2.8''.
	(Smalltalk at: #Gofer) project load: ''GsSeasideTesting28'' version: ''1.0''.
	(Smalltalk at: #Gofer) project load: ''GsSqueakSource'' version: ''2.0-alpha.3''.
	(Smalltalk at: #Gofer) project load: ''Magritte'' version: ''1.2.1.4''.
	(Smalltalk at: #Gofer) project load: ''GsScaffolding'' version: ''1.0''.
	(Smalltalk at: #Gofer) project load: ''Pier'' version: ''1.2.1.3''.
	(Smalltalk at: #Gofer) project load: ''GsSeasideTesting28'' version: ''1.0'' group: #( ''PierTesting'' ).
	(Smalltalk at: #Gofer) project load: ''PierAddOns'' version: ''1.0.2''.
]
		on: Warning
		do: [:ex | 
			Transcript cr; show: ''Warning: '', ex messageText.
			ex resume ].
System commitTransaction ifFalse: [ nil error: ''Cannot commit after updating to 1.0-beta.8'' ]'