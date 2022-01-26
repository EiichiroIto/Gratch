menu actions
newProject
	self confirmForNewProject
		ifFalse: [ ^ self ].
	self projectDirectory: nil.
	self projectName: 'New Project'.
	self installNewProject: self createProject