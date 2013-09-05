*gemTools-client
handleServerDirectoryRequest: request

	| fileDirectory |
	fileDirectory := FileListGemStone  modalFolderSelector: request default.
	fileDirectory == nil ifTrue: [ ^nil ].
	^fileDirectory pathName
