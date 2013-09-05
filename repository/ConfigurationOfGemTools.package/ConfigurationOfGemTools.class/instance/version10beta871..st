versions
version10beta871: spec
	<version: '1.0-beta.8.7.1' imports: #('1.0-beta.8.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '1.0-beta.8.7.1 (dkh.152):
- add debugging code for cases when the gci error does not have a GsProcess associated with it..
1.0-beta.8.7.1 (dkh.153):
- add support for GemStone3.2
1.0-beta.8.7.1 (dkh.154):
oop for Quad and Double Byte classes is actually different in 3.x
1.0-beta.8.7.1 (dkh.155):
- restore support for 3.1.x'.
		spec author: 'dkh'.
		spec timestamp: '3/6/2013 15:06'. ].

	spec for: #'squeakCommon' do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'FFI' with: '1.2';
			project: 'HelpSystem' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-dkh.587';
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
