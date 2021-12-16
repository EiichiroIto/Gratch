menu actions
saveStageAsImage
	| fName saveForm |
	saveForm := presenter stageShotExtent: presenter display extent truncated.
	saveForm ifNil: [ ^ self ].
	fName := self
		chooseNewFileDefault: self projectName
		extension: self imageExtension
		title: 'Save Patches Snapshot' localized
		type: #scriptsSnapshot.
	fName ifNil: [ ^ self ].
	saveForm writePNGFileNamed: fName pathString