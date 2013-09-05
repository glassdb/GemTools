baselines
baseline10beta6: spec 
	<version: '1.0-beta.6-baseline'>
	
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
			package: 'GemTools-Overrides';
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
			project: 'HelpSystem' with: [
				spec
					className: 'ConfigurationOfHelpSystem';
					versionString: '1.0-baseline';
					file: 'ConfigurationOfHelpSystem';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			yourself.
		spec
			package: 'GemTools-Client' with: [
				spec includes: #( 'GemTools-ProfStef' 'GemTools-Help') ];
			package: 'GemTools-ProfStef' ; "empty package at this point"
			package: 'GemTools-Help' with: [
				spec requires: #('HelpSystem' 'GemTools-Client') ];
			yourself.
		].