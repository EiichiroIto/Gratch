accessing
optionsFor: aSymbol
	aSymbol = #stickyWindow
		ifTrue: [ ^ {true . false} ].
	aSymbol = #useErrorCatcher
		ifTrue: [ ^ {true . false} ].
	aSymbol = #dontClose
		ifTrue: [ ^ {true . false} ].
	aSymbol = #keepMaximize
		ifTrue: [ ^ {true . false} ].
	aSymbol = #language
		ifTrue: [ ^ ScratchTranslator availableLocales ].
	aSymbol = #projectDir
		ifTrue: [ ^ #string ].
	aSymbol = #fullscreen
		ifTrue: [ ^ {true . false} ].
	aSymbol = #resizable
		ifTrue: [ ^ {true . false} ].
	aSymbol = #hideDebugMenu
		ifTrue: [ ^ {true . false} ].
	^ #()