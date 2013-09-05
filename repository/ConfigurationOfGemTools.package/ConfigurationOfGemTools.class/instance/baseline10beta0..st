baselines
baseline10beta0: spec 
	<version: '1.0-beta.0-baseline'>
	
	spec for: #squeakCommon do: [
		spec blessing: #baseline.
		spec description: 'Baseline GemTools client for Pharo/Squeak. Loads bleeding edge code.'.
		spec repository: 'http://seaside.gemstone.com/ss/GLASSClient'.
		spec
			project: 'FFI' with: [
				spec
					className: 'ConfigurationOfFFI';
					versionString: '1.2';
					file: 'ConfigurationOfFFI';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].

		spec 
			package: 'OB-SUnitGUI' with: [
				spec repository: 'http://seaside.gemstone.com/ss/obsunit' ];
			package: 'GemTools-Client' with: [
				spec requires: { 'FFI'. 'OB-SUnitGUI'. } ];
			package: 'GemTools-Platform' with: [
				spec requires: { 'GemTools-Client'. } ]].
