menu actions
importGraph

	| file newProj copier fromWorld |
	file := UIManager default
		chooseExistingFileReference: 'Import Graph' localized
		extensions: {self class extension}
		path: self projectDirectory
		preview: self class previewClass.
	file ifNil: [ ^ self ].
	file isFile ifFalse: [ ^ self ].
	newProj := self readProjectFrom: file.
	newProj ifNil: [ ^ self ].
	fromWorld := self newWorld.
	newProj setupWorld: fromWorld.
	newProj fixVars.
	copier := self newWorldCopier
		from: fromWorld;
		to: grWorld;
		copyNodesAndEdges.
	presenter updateDisplay