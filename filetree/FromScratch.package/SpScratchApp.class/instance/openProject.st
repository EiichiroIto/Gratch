menu actions
openProject

	| file |
	self confirmForNewProject ifFalse: [ ^ self ].
	file := presenter
		        chooseExistingFileReference: 'Open Project' localized
		        extensions: { self class extension }
		        path: self projectDirectory
		        preview: self class previewClass.
	file ifNil: [ ^ self ].
	file isFile ifFalse: [ ^ self ].
	self openProject: file