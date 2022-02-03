menu actions
exportGDF
	grWorld isEmpty
		ifTrue: [ ^ self ].
	self export: GratchGDFExporter new extension: self gdfExtension