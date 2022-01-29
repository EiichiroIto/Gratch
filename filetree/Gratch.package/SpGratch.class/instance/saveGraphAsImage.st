menu actions
saveGraphAsImage
	| file saveForm |
	saveForm := self graphFormExtent: 480 @ 480.
	saveForm ifNil: [ ^ self ].
	file := UIManager default
		chooseForSaveFileReference: 'Save Graph' localized
		extensions: {self imageExtension}
		path: self projectPath.
	file ifNil: [ ^ self ].
	saveForm writePNGFileNamed: file pathString