installation chapter
step4InstallationStep2Section 
	^HelpTopic 
		title: 'Step 5 - Install GCI library files'
		contents:	
'The GCI library file is a C library that contains code for communicating with the GemStone server. The source directory, destination directory and name of the GCI library file depends upon which platform you are running and how you have installed GemStone.

If you have done a native install and are running your GemTools image on the same OS as the stone, then you will copy the GCI library file from $GEMSTONE/lib32.

If the OS where the stone is running differs from the OS where you are running GemTools OS, then you should download the GemTools 1.0-beta.8 One-Click from ''http://seaside.gemstone.com/squeak/GemTools-1.0-beta.8-231x.app.zip'' for use with GemStone/S 2.3.1 or ''http://seaside.gemstone.com/squeak/GemTools-1.0-beta.8-244x.app.zip'' for use with GemStone/S 2.4 and copy the GCI library file from One-Click.app/Contents/Resources.

If you are using an appliance and running GemTools on Linux, you may copy the GCI library from the appliance itself.

For more information, see James'' blog post: ''http://programminggems.wordpress.com/2010/02/02/name-and-location-of-gci-library/''

To finish the GCI library installation please see the instruction page for the OS upon which you are running GemTools:

  - Mac (http://code.google.com/p/glassdb/wiki/MacGCIInstall)
  - Windows (http://code.google.com/p/glassdb/wiki/WindowsGCIInstall)
  - Linux vms preceding 3.11-3* (http://code.google.com/p/glassdb/wiki/OldLinuxVM)
  - Linux 3.11-3 or later vm* (http://code.google.com/p/glassdb/wiki/LinuxVM)

* Note that the installation instructions for Linux is dependent upon which version of the vm that you are running.
'
