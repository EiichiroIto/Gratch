menu actions
saveGraphAsImage
	| file saveForm |
	grWorld isEmpty
		ifTrue: [ ^ self ].
	saveForm := self graphFormExtent: 480 @ 480.
	saveForm ifNil: [ ^ self ].
	file := UIManager default
		chooseForSaveFileReference: 'Export ...' localized
		extensions: {self imageExtension}
		path: self projectPath.
	file ifNil: [ ^ self ].
	saveForm writePNGFileNamed: file pathString