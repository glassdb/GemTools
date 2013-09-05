versions
version10beta5: spec
	<version: '1.0-beta.5' imports: #('1.0-beta.3-baseline' )>

	spec for: #common do: [
		spec blessing: #beta.
		spec description: '- fix bug in the new GCI library code ... linux-gnu is also a valid os name
'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '2/8/2010 15:33'.
].
	spec for: #squeakCommon do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'OB' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-DaleHenrichs.515';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.4'.].
	spec for: #pharo do: [
		spec project: 'ProfStef' with: '1.0'.
		spec package: 'GemTools-ProfStef' with: 'GemTools-ProfStef-DaleHenrichs.9'.].
	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-dkh.5'.].