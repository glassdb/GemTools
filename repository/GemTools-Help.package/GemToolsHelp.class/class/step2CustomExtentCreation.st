server chapter
step2CustomExtentCreation
	^HelpTopic 
		title: 'Step 2 - Custom Extent creation (GemStone 2.4.4.1)'
		contents:	
'GemStone/S 2.4.4.1 ships with a pre-built extent $GEMSTONE/bin/extent0.seaside.dbf. In GemStone 2.4.4.1 and later, the extent is preloaded with only the base GLASS classes loaded (Seaside is not preloaded). To create a custom extent, simply load the Metacello configurations for the projects that you want loaded into your extent.

For example to load Seaside3.0 follow the insrtuctions here (http://code.google.com/p/glassdb/wiki/Seaside30Configuration#Base_group).

If you don''t already have a GemTools Launcher then follow the instructions in the GemTools Installation section starting with Step 1. If you already have a GemTools Launcher then you should follow the instructions in the GemTools Installation section starting with Step 3.

'