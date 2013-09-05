versions
version10beta1: spec
	<version: '1.0-beta.1' imports: #('1.0-beta.0-baseline' )>

	spec for: #squeakCommon do: [
		spec blessing: #beta.
		spec description: '- Convert to using ConfigurationOfGemTools
- nicer info dialog when Undefined symbols and unsent messages are clean
- support for 3.0 GciErrSType
- change restore from backup done message ... do not prompt to start Seaside gems if Seaside is not installed
- replace dialogs that are calling "ifNotEmpty:" with: "isEmptyOrNil" (from Gerhard)
- autoAbort _before_ commands is now optional (off by default)
'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client-dkh.504';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.3'.].
	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-dkh.5'.].