menu actions
openProject: aFileReference

	| newProj |
	newProj := self readProjectFrom: aFileReference.
	newProj ifNil: [ ^ self ].
	self projectDirectory: aFileReference parent.
	self projectName: aFileReference base.
	self installNewProject: newProj