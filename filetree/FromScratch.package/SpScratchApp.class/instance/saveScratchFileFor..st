private
saveScratchFileFor: aProject
	^ UIManager default
		chooseForSaveFileReference: 'Save Project' localized
		extensions: {self class extension}
		path: self projectPath