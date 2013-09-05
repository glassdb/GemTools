private
fullDescriptions

	| versions result loadedVersion |
	versions := self gemtoolsVersions.
	result := WriteStream on: Text new.
	loadedVersion := ConfigurationOfGemTools project currentVersion.
	Cursor wait showWhile: [
		versions do: [:version | | blessing text |
			text := version versionString asText allBold.
			loadedVersion = version 
				ifTrue: [ text := '* ' asText, text addAttribute: TextEmphasis underlined ].
			result 
				nextPutAll: text; 
				nextPutAll: ' <'.
			blessing := version blessing.
			text := version blessing asString asText.
			blessing == #release
				ifTrue: [ text := text allBold ]
				ifFalse: [ text addAttribute: (TextColor color: Color red) ].
			result 
				nextPutAll: text;
				nextPutAll: '>'; cr.
			result nextPutAll: version description; cr; cr ]].
	UIManager default edit: result contents label: 'GemTools Client version descriptions' accept: nil
	
