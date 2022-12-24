private
saveProjectAs: aFileReference
	| targetName |
	targetName := presenter target objName.
	project
		thumbnailForm: (presenter stageShotExtent: self class thumbnailExtent).
	(self writeProjectAs: aFileReference)
		ifFalse: [ ^ false ].
	self projectName: aFileReference base.
	self projectDirectory: aFileReference parent.
	presenter target: (project findObjName: targetName).
	^ true