menu actions
savePlotImage: aPlotter
	| file saveForm |
	saveForm := self formFrom: aPlotter extent: 400 @ 400.
	saveForm ifNil: [ ^ self ].
	file := UIManager default
		chooseForSaveFileReference: 'Save Plots Snapshot' localized
		extensions: {'png'}
		path: self application projectPath.
	file ifNil: [ ^ self ].
	saveForm writePNGFileNamed: file pathString