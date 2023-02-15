menu actions
openProject
	| file newProj |
	self confirmForNewProject
		ifFalse: [ ^ self ].
	file := presenter
		chooseExistingFileReference: 'Open Project' localized
		extensions: {self class extension}
		path: self projectDirectory
		preview: self class previewClass.
	file ifNil: [ ^ self ].
	file isFile ifFalse: [ ^ self ].
	newProj := self readProjectFrom: file.
	newProj ifNil: [ ^ self ].
	self projectDirectory: file parent.
	self projectName: file base.
	self installNewProject: newProj