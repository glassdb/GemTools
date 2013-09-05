versions
version10beta85: spec
	<version: '1.0-beta.8.5' imports: #('1.0-beta.8.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '- adjust for new GCI error message behavior
- stop using a deprecated method
- add GemTools support for MetacelloBrowser
- fix a bug in OGUpgradeJadeServer>>upgradeGLASSServer
- add support for SymbolList Browser
1.0-beta.8.5 (dkh.126):
- support for button panel in MetacelloBrowser for GemTools
1.0-beta.8.5 (dkh.127):
- remove unnecessary logging
1.0-beta.8.5 (dkh.128):
- tweak upgrade process to make sure that Monticello gets loaded so we can leverage any load bugfixes for remaining package loads
1.0-beta.8.5 (dkh.129):
- let''s load Metacello before doing anything else during a GLASS upgrade
1.0-beta.8.5 (dkh.130):
- fix Issue 280: GemTools login error: ''Network error - text follows'', does not follow with error message...
  http://code.google.com/p/glassdb/issues/detail?id=280
1.0-beta.8.5 (dkh.131):
- fix Issue 250: order and size of args asociated with #halt changed in Gci3xErrStype64 (GemStone 3.0)
  http://code.google.com/p/glassdb/issues/detail?id=250
1.0-beta.8.5 (dkh.132):
- revert load order change from (dkh.129)
- don''t show #broken versions in GLASS update menu
1.0-beta.8.5 (dkh.133):
- tweak Update GemTools menu builder
1.0-beta.8.5 (dkh.134):
- to work around Metacello Issue 136 ... needs latest configuration versions loaded
1.0-beta.8.5 (dkh.136):
- Need to load GLASS twice (wince) to make sure that 1) we''ve got the latest and greatest Metacello ... and we cannot short circuit the load then 2) any incorrect loads during first pass get correct now that we''ve got the latest and greatest Metacello
1.0-beta.8.5 (dkh.137):
- fix Issue 291: Maintenance Gem Topaz Exit [Seaside 3.0 / GemStone 3.0]
  http://code.google.com/p/glassdb/issues/detail?id=291
- fix Issue 132: Use System class>>#''_cacheName:'' to make session recognizable in vsd
  http://code.google.com/p/glassdb/issues/detail?id=132
1.0-beta.8.5 (dkh.138):
- patch for Squeak from Tim Felgentreff
1.0-beta.8.5 (dkh.139):
- remove MetacelloBrowser from config
- add some Help Browser messages...'.
		spec author: 'dkh'.
		spec timestamp: '10/20/2011 16:57'. ].

	spec for: #'squeakCommon' do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'FFI' with: '1.2';
			project: 'HelpSystem' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-dkh.576';
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
