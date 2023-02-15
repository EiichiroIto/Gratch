private
saveScratchFileFor: aProject

	^ presenter
		  chooseForSaveFileReference: 'Save Project' localized
		  extensions: { self class extension }
		  path: self projectPath