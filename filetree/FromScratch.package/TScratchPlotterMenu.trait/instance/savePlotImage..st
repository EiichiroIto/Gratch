menu actions
savePlotImage: aPlotter
	| fName saveForm |
	saveForm := self formFrom: aPlotter extent: 400 @ 400.
	saveForm ifNil: [ ^ self ].
	fName := self application
		chooseNewFileDefault: ''
		extension: 'png'
		title: 'Save Plots Snapshot' localized
		type: #scriptsSnapshot.
	fName ifNil: [ ^ self ].
	saveForm writePNGFileNamed: fName pathString