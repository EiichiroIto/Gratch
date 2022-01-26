menu actions
loadExample: aFileReference
	| newProj |
	newProj := self createProject readProjectFrom: aFileReference.
	newProj ifNil: [ ^ self ].
	self projectDirectory: nil.
	self projectName: aFileReference base.
	self installNewProject: newProj