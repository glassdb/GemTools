installation chapter
step11LoadGLASS231Equivalent
	^HelpTopic 
		title: 'Step 12 - Load Optional Packages'
		contents:	
'Once you''ve updated the base system, you may want to do a "full load" of the packages that were loaded by GLASS.230-dkh.231. The following expressions can be evaluated in a GemStone workspace:

MCPlatformSupport commitOnAlmostOutOfMemoryDuring: [
  [ 
	(Smalltalk at: #Gofer) project load: ''GsMisc''.
	(Smalltalk at: #Gofer) project load: ''GsSOAP''.
	
	(Smalltalk at: #Gofer) project load: ''Seaside28''.
	(Smalltalk at: #Gofer) project load: ''Seaside28Examples''.
	(Smalltalk at: #Gofer) project load: ''GsSeasideTesting28''.
	(Smalltalk at: #Gofer) project load: ''GsSqueakSource''.
	(Smalltalk at: #Gofer) project load: ''Magritte''.
	(Smalltalk at: #Gofer) project load: ''GsScaffolding''.
	(Smalltalk at: #Gofer) project load: ''Pier''.
	(Smalltalk at: #Gofer) project load: ''GsSeasideTesting28'' group: #( ''PierTesting'' ).
	(Smalltalk at: #Gofer) project load: ''PierAddOns''.
  ]
		on: Warning
		do: [:ex | ex resume ]].

If you want a subset of the "full load", then you can edit the above expression to load only the parts that you are interested in.

In GemStone/S 2.4 you may load Seaside3.0:

MCPlatformSupport commitOnAlmostOutOfMemoryDuring: [
  [ 
	(Smalltalk at: #Gofer) project load: ''Seaside30''.
  ]
		on: Warning
		do: [:ex | ex resume ]].

'