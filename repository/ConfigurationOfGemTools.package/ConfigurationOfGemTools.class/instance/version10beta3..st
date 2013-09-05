versions
version10beta3: spec
	<version: '1.0-beta.3' imports: #('1.0-beta.3-baseline' )>

	spec for: #common do: [
		spec blessing: #beta.
		spec description: '- improve ''Show Object log'' output format
- add ''List backup files'' command
- add some missing icon definitions for Squeak
- load OB/Shout if not present
- ProfStef tutorials (Pharo only)
'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '1/25/2010 09:46'.
].
	spec for: #squeakCommon do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'OB' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-DaleHenrichs.513';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.4'.].
	spec for: #pharo do: [
		spec project: 'ProfStef' with: '1.0'.
		spec package: 'GemTools-ProfStef' with: 'GemTools-ProfStef-DaleHenrichs.9'.].
	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-dkh.5'.].