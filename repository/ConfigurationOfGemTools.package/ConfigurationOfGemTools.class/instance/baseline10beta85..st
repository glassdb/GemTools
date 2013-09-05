baselines
baseline10beta85: spec 
	<version: '1.0-beta.8.5-baseline'>
	
	spec for: #squeakCommon do: [
		spec blessing: #baseline.
		spec description: 'HelpBrowser on Squeak'.
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
			project: 'HelpSystem' with: [
				spec
					className: 'ConfigurationOfHelpSystem';
					versionString: '1.0-baseline';
					file: 'ConfigurationOfHelpSystem';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			yourself.

		spec 
			package: 'OB-SUnitGUI' with: [
				spec repository: 'http://seaside.gemstone.com/ss/obsunit' ];
			package: 'GemTools-Client' with: [
				spec 
					includes: #('GemTools-Help');
					requires: #( 'FFI' 'OB-SUnitGUI' ) ];
			package: 'GemTools-Platform' with: [
				spec requires: #( 'GemTools-Client' ) ];
			package: 'GemTools-Overrides';
			package: 'GemTools-Help' with: [
				spec requires: #('HelpSystem' 'GemTools-Client') ];
			yourself.

		spec group: 'default' with: #('OB-SUnitGUI' 'GemTools-Client' 'GemTools-Platform' ).

		spec for: #'OBNotPresent' do: [
			spec package: 'GemTools-Client' with: [
				spec requires: #( 'OB' ) ]].

		spec for: #'ShoutNotPresent' do: [
			spec package: 'GemTools-Client' with: [
				spec requires: #( 'Shout' ) ]]	].
