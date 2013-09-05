versions
version10beta4: spec
	<version: '1.0-beta.4' imports: #('1.0-beta.3-baseline' )>

	spec for: #common do: [
		spec blessing: #beta.
		spec description: '- Rename GCI library for Squeak 3.11.3-2135
'.
		spec author: 'JamesFoster'.
		spec timestamp: '2/2/2010 14:14'.
].
	spec for: #squeakCommon do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'OB' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-JamesFoster.514';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.4'.].
	spec for: #pharo do: [
		spec project: 'ProfStef' with: '1.0'.
		spec package: 'GemTools-ProfStef' with: 'GemTools-ProfStef-DaleHenrichs.9'.].
	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-dkh.5'.].