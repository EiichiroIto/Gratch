menu actions
exportStageImage

	| file saveForm |
	saveForm := presenter stageShotExtent: self class screenshotExtent.
	saveForm ifNil: [ ^ self ].
	file := presenter
		        chooseForSaveFileReference: 'Export ...' localized
		        extensions: { self imageExtension }
		        path: self extraPath.
	file ifNil: [ ^ self ].
	self extraDirectory: file parent.
	saveForm writePNGFileNamed: file pathString