versions
version10beta6: spec
	<version: '1.0-beta.6' imports: #('1.0-beta.6-baseline' )>

	spec for: #common do: [
		spec blessing: #beta.
		spec description: '- fixed highlighting for class definition/creation template
- enabled syntax highlighting in workspaces
- double click includes leading $_. In package GemTools-Overrides that is not loaded by default, because it stomps on a method in Character.
- GsOBColumnPanel>>currentNode sends #currentNode to server-side, fixing a couple of ancient bugs
- reset GLASS version after doing a Server update
- exclude #baseline versions from update glass client version list
- add proportional splitters to inspectors (resize panes vertically)
- Use Help System instead of ProfStef
- fix Issue 54: http://code.google.com/p/glassdb/issues/detail?id=54 "Typos and unclear instructions in GemTools ProfStef tutorial"
- fix Issue 104: http://code.google.com/p/glassdb/issues/detail?id=104 "Title for Update GLASS version list window incorrect"
- fix Issue 115: http://code.google.com/p/glassdb/issues/detail?id=115 "GettingStartedWithGLASS doesn''t mention when to start the stone or the gems for a native installation"
- workaround for Issue 105: http://code.google.com/p/glassdb/issues/detail?id=105 "Gofer Project loader in or out of GLASS config"
- add ''Admin>>Doit...>>Version Report'' menu item (included in bug report template) that shows versions of all installed configs
- add toggle ''Admin>>Commit on Almost Out of Memory'' command
- upgrade path from 0.231,  0.232.2 and 1.0-beta.0 through 1.0-beta.7 to 1.0-beta.8
- help browser info corresponds with http://code.google.com/p/glassdb/wiki/GettingStartedWithGLASS#Backup_repository page in glassdb
'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '5/26/2010 16:10'.
].
	spec for: #squeakCommon do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'OB' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-DaleHenrichs.538';
			package: 'GemTools-Overrides' with: 'GemTools-Overrides-DaleHenrichs.1';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.4'.].
	spec for: #pharo do: [
		spec project: 'HelpSystem' with: '1.0'.
		spec 
			package: 'GemTools-Help' with: 'GemTools-Help-DaleHenrichs.23';
			package: 'GemTools-ProfStef' with: 'GemTools-ProfStef-DaleHenrichs.13'.].
	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-dkh.5'.].