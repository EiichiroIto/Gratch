accessing
projectDir

	^ dictionary at: #projectDir ifAbsent: [ ^ '' ]