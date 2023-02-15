menu actions
savePlotImage: aPlotter

	| file saveForm |
	saveForm := self formFrom: aPlotter extent: 400 @ 400.
	saveForm ifNil: [ ^ self ].
	file := SpScratchFrame
		        chooseForSaveFileReference: 'Save Plots Snapshot' localized
		        extensions: { self application imageExtension }
		        path: self application extraPath.
	file ifNil: [ ^ self ].
	self application extraDirectory: file parent.
	saveForm writePNGFileNamed: file pathString