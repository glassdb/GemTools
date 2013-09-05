versions
version10beta86: spec
	<version: '1.0-beta.8.6' imports: #('1.0-beta.8.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '1.0-beta.8.6 (dkh.141):
- open 1.0-beta.8.6 for deveopment
- fix Issue 308: ConfigurationOfGrease (and others) dirty after a load
  http://code.google.com/p/glassdb/issues/detail?id=308
1.0-beta.8.6 (dkh.142):
- fix Issue 309: ConfigurationofMetacello dirtied during GLASS 1.0-beta.8.7.1 load
  http://code.google.com/p/glassdb/issues/detail?id=309
- upgrade process now involves:
  - preload of basic Metacello packages for version 1.0-beta.31.1 to ensure symbolic versions and 
    MetacelloSkipDirtyPackageLoad notification are available for subsequent load operations ... this 
    preload does not use Metacello
  - load of just ''Core'' and ''Monticello'' GLASS projects to ensure that the latest Monticello is available
  - ''Standard'' load of the GLASS project'.
		spec author: 'dkh'.
		spec timestamp: '11/17/2011 13:53'. ].

	spec for: #'squeakCommon' do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'FFI' with: '1.2';
			project: 'HelpSystem' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-dkh.578';
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
