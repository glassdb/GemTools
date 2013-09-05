versions
version10beta87: spec
	<version: '1.0-beta.8.7' imports: #('1.0-beta.8.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '1.0-beta.8.7 (dkh.144):
- open 1.0-beta.8.7 for deveopment
- Configurations don''t have to be explicitly loaded now that we are bootstrapping Metacello 1.0-beta.31.1
1.0-beta.8.7 (dkh.145):
- tweak to get the load to load correctly ... satisfactory results, but nee dto look closer
1.0-beta.8.7 (dkh.148):
- support for GemStone 3.1
1.0-beta.8.7 (dkh.149):
- libICU (Unicode) support for GemStone 3.1
1.0-beta.8.7 (dkh.150):
- libICU (Unicode) support for GemStone 3.1....round 2'.
		spec author: 'dkh'.
		spec timestamp: '6/20/2012 10:13'. ].

	spec for: #'squeakCommon' do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'FFI' with: '1.2';
			project: 'HelpSystem' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-dkh.583';
			package: 'GemTools-Help' with: 'GemTools-Help-DaleHenrichs.26';
			package: 'GemTools-Overrides' with: 'GemTools-Overrides-DaleHenrichs.1';
			package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-DaleHenrichs.7'. ].

	spec for: #'pharo1.1.x' do: [
		spec project: 'FFI' with: '1.3'. ].

	spec for: #'GemToolsForPharo1.0' do: [
		spec project: 'OB' with: '1.1'. ].

	spec for: #'GemToolsForPharo1.1' do: [
		spec preLoadDoIt: #'preloadDoitForPharo11'.
		spec project: 'OB' with: '1.1.4'. ].

	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-DaleHenrichs.7'. ].
