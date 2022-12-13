menu actions
loadExample: aFileReference

	| newProj |
	self confirmForNewProject ifFalse: [ ^ self ].
	newProj := self createProject readProjectFrom: aFileReference.
	newProj ifNil: [ ^ self ].
	self projectDirectory: nil.
	self projectName: aFileReference base.
	self installNewProject: newProj