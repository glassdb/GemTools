versions
version10beta82: spec
	<version: '1.0-beta.8.2' imports: #('1.0-beta.8-baseline' )>

	spec for: #common do: [
		spec blessing: #release.
		spec description: '- improve debugger window title error messages for UserDefinedErrors and Halts. Need GLASS 1.0-beta.8.3 or later to see the improved results (see Issue 32: http://code.google.com/p/glassdb/issues/detail?id=32).'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '8/17/2010 17:30'.
].
	spec for: #squeakCommon do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'HelpSystem' with: '1.0';
			project: 'OB' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-DaleHenrichs.543';
			package: 'GemTools-Help' with: 'GemTools-Help-DaleHenrichs.24';
			package: 'GemTools-Overrides' with: 'GemTools-Overrides-DaleHenrichs.1';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.4'.].
	spec for: #pharo do: [
		spec 
			package: 'GemTools-ProfStef' with: 'GemTools-ProfStef-DaleHenrichs.13'.].
	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-dkh.5'.].