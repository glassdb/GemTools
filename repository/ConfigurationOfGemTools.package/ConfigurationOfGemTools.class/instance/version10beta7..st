versions
version10beta7: spec
	<version: '1.0-beta.7' imports: #('1.0-beta.6-baseline' )>

	spec for: #common do: [
		spec blessing: #release.
		spec description: '- add support for start/stop/restart Seaside30 gems
'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '7/9/2010 13:17'.
].
	spec for: #squeakCommon do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'OB' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-DaleHenrichs.540';
			package: 'GemTools-Overrides' with: 'GemTools-Overrides-DaleHenrichs.1';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.4'.].
	spec for: #pharo do: [
		spec project: 'HelpSystem' with: '1.0'.
		spec 
			package: 'GemTools-Help' with: 'GemTools-Help-DaleHenrichs.23';
			package: 'GemTools-ProfStef' with: 'GemTools-ProfStef-DaleHenrichs.13'.].
	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-dkh.5'.].