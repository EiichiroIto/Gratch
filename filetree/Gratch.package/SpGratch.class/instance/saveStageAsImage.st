menu actions
saveStageAsImage
	| fName saveForm pngExt |
	pngExt := self imageExtension.
	saveForm := presenter stageShotExtent: presenter display extent truncated.
	saveForm ifNil: [ ^ self ].
	fName := self
		chooseNewFileDefault: self projectName
		extension: pngExt
		title: 'Save Patches Snapshot' localized
		type: #scriptsSnapshot.
	fName ifNil: [ ^ self ].
	fName := fName withExtension: pngExt.
	fName isFile
		ifTrue: [ (UIManager default
				confirm: 'Overwrite existing ' , fName basename , '?')
				ifFalse: [ ^ self ].
			fName delete ].
	saveForm writePNGFileNamed: fName pathString