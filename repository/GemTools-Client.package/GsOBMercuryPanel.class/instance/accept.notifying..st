callbacks
accept: aText notifying: aController

	^session receiver: oopType perform: 'accept:notifying:' withArguments: (Array with: aText asString withGemStoneLineEndings with: oopType)
