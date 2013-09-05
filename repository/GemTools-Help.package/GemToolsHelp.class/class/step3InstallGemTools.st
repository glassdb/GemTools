installation chapter
step3InstallGemTools
	^HelpTopic 
		title: 'Step 4 - Install GemTools'
		contents:	
'To install GemTools you must load the configurationOfGemTools into your image.

In Pharo, evaluate the following statements:

  Gofer new
        squeaksource: ''MetacelloRepository'';
        package: ''ConfigurationOfGemTools'';
        load.

In Squeak image, evaluate the following statements:

  (Installer repository:
    ''http://www.squeaksource.com/MetacelloRepository'')
        install: ''ConfigurationOfGemTools''. 

Then evaluate the following expression to load the lastest version of GemTools:

  (Smalltalk at: #ConfigurationOfGemTools) 
	perform: #loadLatestVersion.

This expression opens the GemTools Help Browser (which you are already viewing):

  (Smalltalk at: #HelpBrowser) openOn: (Smalltalk at: #GemToolsHelp). 
'