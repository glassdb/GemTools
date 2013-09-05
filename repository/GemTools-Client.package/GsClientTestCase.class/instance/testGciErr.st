GCI Tests
testGciErr

	| error result language string |
	error := session getAndClearLastError.
	self assert: error isNil.
	[
		language := session executeString: 'NativeLanguage'.
		string := session executeString: '(GemStoneError at: NativeLanguage) at: 1001'.
		result := session executeString: 'self'.
	] on: GsCompileError do: [:ex | 
		error := ex tag.
	].
	self 
		assert: language = #'English';
		assert: string notNil;
		assert: result isNil;
		assert: error notNil;
		assert: error number = 1001;
		assert: error category = library oopGemStoneError;
		assert: error argCount = 2;
		assert: error message = 'GemStone Smalltalk Compiler Errors:
1: undefined symbol
';
		assert: (error args at: 2) = 'self';
		yourself.
