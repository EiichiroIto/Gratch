accessing
projectDir

	^ dictionary
		  at: #projectDir
		  ifAbsent: [ ^ FileSystem workingDirectory pathString ]