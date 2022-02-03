menu actions
saveStageAsImage
	| file saveForm |
	saveForm := presenter
		stageShotExtent: presenter display extent truncated.
	saveForm ifNil: [ ^ self ].
	file := UIManager default
		chooseForSaveFileReference: 'Export ...' localized
		extensions: {self imageExtension}
		path: self projectPath.
	file ifNil: [ ^ self ].
	saveForm writePNGFileNamed: file pathString