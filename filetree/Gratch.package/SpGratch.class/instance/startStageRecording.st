menu actions
startStageRecording
	| fName |
	fName := self
		chooseNewFileDefault: self projectName
		extension: 'gif'
		title: 'Start Stage Recording'
		type: #snapshot.
	fName ifNil: [ ^ self ].
	recorder := ScratchRecorder new
		openFileNamed: fName;
		model: presenter;
		extent: self class recodingExtent.
	self updateStatus