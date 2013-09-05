versions
version10beta84: spec
	<version: '1.0-beta.8.4' imports: #('1.0-beta.8.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '- consolidate changes, so that we''re back to one GemTools-Client that works in both Pharo1.0 and Pharo1.1
- no longer need GemTools-ProfStef
- tweaks for Pharo 1.1.1 (pick up Johan''s changes, but use UIManager instead of PopUpMenu)
- significant performance improvement when using SHOUT ... reduce round trips drastically!
- fix Issue 171: http://code.google.com/p/glassdb/issues/detail?id=171 "need to be able to set ''Popup on debug'' without having to login"
- fix Issue 167: http://code.google.com/p/glassdb/issues/detail?id=167 "Admin>>Repository>>restore w/tranlogs should be removed"
- fix Issue 143: http://code.google.com/p/glassdb/issues/detail?id=143 "incorrect download path in help browser"
- port Help Browser topics to version 1.1 of HelpSystem
- 3.0 gci compatability
- fixed Issue 204: http://code.google.com/p/glassdb/issues/detail?id=204 "remove _ assignments from GemTools code"'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '12/16/2010 12:40'.
].

	spec for: #'squeakCommon' do: [
		spec 
			project: 'Shout' with: '1.0';
			project: 'HelpSystem' with: '1.1'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-DaleHenrichs.559';
			package: 'GemTools-Help' with: 'GemTools-Help-DaleHenrichs.26';
			package: 'GemTools-Overrides' with: 'GemTools-Overrides-DaleHenrichs.1';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.4'.].

	spec for: #'GemToolsForPharo1.0' do: [
		spec project: 'OB' with: '1.1'.].

	spec for: #'GemToolsForPharo1.1' do: [
		spec preLoadDoIt: #'preloadDoitForPharo11'.
		spec project: 'OB' with: '1.1.4'.].

	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-DaleHenrichs.7'.].
