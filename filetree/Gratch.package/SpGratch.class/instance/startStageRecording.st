menu actions
startStageRecording
	| file |
	file := UIManager default
		chooseForSaveFileReference: 'Start Stage Recording' localized
		extensions: {'gif'}
		path: self projectPath.
	file ifNil: [ ^ self ].
	recorder := ScratchRecorder new
		openFileNamed: file;
		model: presenter;
		extent: self class recodingExtent.
	self updateStatusForced: true