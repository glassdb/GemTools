private
args

	^self session executeString: 'Smalltalk at: #WAGemStoneRunSeasideGems ifPresent: [:cl | ^cl default name, '' '', cl defaultPortString ]. ^''"FastCGI" "9001"'''