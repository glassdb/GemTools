baselines
baseline10beta3: spec 
	<version: '1.0-beta.3-baseline'>
	
	spec for: #squeakCommon do: [
		spec blessing: #baseline.
		spec description: 'Use ConfigurationOfOmniBrowser to load OB if not already installed'.
		spec repository: 'http://seaside.gemstone.com/ss/GLASSClient'.
		spec
			project: 'FFI' with: [
				spec
					className: 'ConfigurationOfFFI';
					versionString: '1.2';
					file: 'ConfigurationOfFFI';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			project: 'OB' with: [
				spec
					className: 'ConfigurationOfOmniBrowser';
					loads: #('Core' 'OB-Shout' );
					file: 'ConfigurationOfOmniBrowser';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			project: 'Shout' with: [
				spec
					className: 'ConfigurationOfShout';
					loads: 'Core';
					file: 'ConfigurationOfShout';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			yourself.

		spec 
			package: 'OB-SUnitGUI' with: [
				spec repository: 'http://seaside.gemstone.com/ss/obsunit' ];
			package: 'GemTools-Client' with: [
				spec requires: #( 'FFI' 'OB-SUnitGUI' ) ];
			package: 'GemTools-Platform' with: [
				spec requires: #( 'GemTools-Client' ) ];
			yourself.

		spec group: 'default' with: #('OB-SUnitGUI' 'GemTools-Client' 'GemTools-Platform' ).

		spec for: #'OBNotPresent' do: [
			spec package: 'GemTools-Client' with: [
				spec requires: #( 'OB' ) ]].

		spec for: #'ShoutNotPresent' do: [
			spec package: 'GemTools-Client' with: [
				spec requires: #( 'Shout' ) ]]	].
	spec for: #pharo do: [
		spec
			project: 'ProfStef' with: [
				spec
					className: 'ConfigurationOfProfStef';
					versionString: '1.0-baseline';
					file: 'ConfigurationOfProfStef';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			yourself.
		spec
			package: 'GemTools-Client' with: [
				spec includes: #( 'GemTools-ProfStef' ) ];
			package: 'GemTools-ProfStef' with: [
				spec requires: #('ProfStef' 'GemTools-Client') ];
			yourself.
		].