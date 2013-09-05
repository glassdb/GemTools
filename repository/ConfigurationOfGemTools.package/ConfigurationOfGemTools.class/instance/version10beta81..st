versions
version10beta81: spec
	<version: '1.0-beta.8.1' imports: #('1.0-beta.8-baseline' )>

	spec for: #common do: [
		spec blessing: #release.
		spec description: '- upgrade GLASS support for GemStone 3.0
- fix a problem in restartSeaside gems after restore'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '7/29/2010 13:10'.
].
	spec for: #squeakCommon do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'HelpSystem' with: '1.0';
			project: 'OB' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-DaleHenrichs.542';
			package: 'GemTools-Help' with: 'GemTools-Help-DaleHenrichs.24';
			package: 'GemTools-Overrides' with: 'GemTools-Overrides-DaleHenrichs.1';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.4'.].
	spec for: #pharo do: [
		spec 
			package: 'GemTools-ProfStef' with: 'GemTools-ProfStef-DaleHenrichs.13'.].
	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-dkh.5'.].