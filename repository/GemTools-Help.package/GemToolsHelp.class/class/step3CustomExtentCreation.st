server chapter
step3CustomExtentCreation
	^HelpTopic 
		title: 'Step 3 - Custom Extent creation (GemStone 2.3.x)'
		contents:	
'GemStone/S 2.3.x ships with a pre-built extent $GEMSTONE/bin/extent0.seaside.dbf. If you want to bootstrap your own extent, then follow these instructions:

   1. Stop your stone:
      stopGemstone
   2. Copy a virgin extent into the seaside/data directory:
      cp $GEMSTONE/bin/extent0.dbf $GEMSTONE/seaside/data
      chmod +w $GEMSTONE/seaside/data/extent0.dbf
   3. Start your stone:
      startGemStone
   4. Download (from http://seaside.gemstone.com/squeak/bootstrap_1.0-beta.4.zip) and unzip bootstrap_1.0-beta.4.zip.
   5. cd to the bootstrap-1.0-beta.4 directory 
   6. Edit the .topazini file to match your stone.
   7. Launch topaz:
      topaz -l -T50000
   8. `login` and `input installMaster.topaz`
   9. Exit topaz.

If you don''t already have a GemTools Launcher then follow the instructions in the GemTools Installation section starting with Step 1. If you already have a GemTools Launcher then you should follow the instructions in the GemTools Installation section starting with Step 3.

'