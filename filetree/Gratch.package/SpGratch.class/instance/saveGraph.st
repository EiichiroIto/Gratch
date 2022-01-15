menu actions
saveGraph
	| fName saveForm |
	saveForm := self graphFormExtent: 480 @ 480.
	saveForm ifNil: [ ^ self ].
	fName := self
		chooseNewFileDefault: self projectName
		extension: self imageExtension
		title: 'Save Graph' localized
		type: #scriptsSnapshot.
	fName ifNil: [ ^ self ].
	saveForm writePNGFileNamed: fName pathString