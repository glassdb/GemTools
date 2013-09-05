versions
version10beta2: spec
	<version: '1.0-beta.2' imports: #('1.0-beta.0-baseline' )>

	spec for: #squeakCommon do: [
		spec blessing: #beta.
		spec description: '- fix update client logic to use #lastMetacelloVersionLoad
- change annotation pane and make more room for useful info
- inspect undefined and inspect sent but not implemented menu items available only when available
- clean up preferences problems when not present
- Admin>>Seaside submen available only when Seaside2.8 installed
- improve session window label (include the session name) when working with multiple stones
'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-dkh.509';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.3'.].
	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-dkh.5'.].