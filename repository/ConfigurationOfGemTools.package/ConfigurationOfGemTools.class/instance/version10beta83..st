versions
version10beta83: spec
	<version: '1.0-beta.8.3' imports: #('1.0-beta.8-baseline' )>

	spec for: #common do: [
		spec blessing: #release.
		spec description: '- pick up Pharo 1.1 changes from Norbert'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '10/4/2010 15:56'.
].
	spec for: #squeakCommon do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'HelpSystem' with: '1.0'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Help' with: 'GemTools-Help-DaleHenrichs.24';
			package: 'GemTools-Overrides' with: 'GemTools-Overrides-DaleHenrichs.1';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.4'.].
	spec for: #pharo do: [
		spec 
			package: 'GemTools-ProfStef' with: 'GemTools-ProfStef-DaleHenrichs.13'.].
	spec for: #'GemToolsForPharo1.0' do: [
		spec project: 'OB' with: '1.1'.
		spec package: 'GemTools-Client' with: 'GemTools-Client-DaleHenrichs.543'].
	spec for: #'GemToolsForPharo1.1' do: [
		spec project: 'OB' with: '1.1.4'.
		spec 
			preLoadDoIt: #preloadDoitForPharo11;
			package: 'GemTools-Client' with: 'GemTools-Client-NorbertHartl.544'].
	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-dkh.5'.].