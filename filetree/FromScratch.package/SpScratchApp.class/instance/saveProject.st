menu actions
saveProject
	| file |
	self closeMediaEditorsAndDialogs.
	self stopAllProcesses.
	file := self saveScratchFileFor: project.
	file ifNil: [ ^ false ].
	^ self saveProjectAs: file