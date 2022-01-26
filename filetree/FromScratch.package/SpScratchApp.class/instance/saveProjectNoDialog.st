menu actions
saveProjectNoDialog
	| file |
	self closeMediaEditorsAndDialogs.
	self stopAllProcesses.
	projectDirectory ifNil: [ ^ self saveProject ].
	file := self projectPath withExtension: self class extension.
	^ self saveProjectAs: file