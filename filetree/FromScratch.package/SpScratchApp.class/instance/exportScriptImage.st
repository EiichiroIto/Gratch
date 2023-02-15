menu actions
exportScriptImage

	| file saveForm |
	saveForm := presenter scriptForm.
	saveForm ifNil: [ ^ self ].
	file := presenter
		        chooseForSaveFileReference: 'Export ...' localized
		        extensions: { self imageExtension }
		        path: self extraPath.
	file ifNil: [ ^ self ].
	self extraDirectory: file parent.
	saveForm writePNGFileNamed: file pathString