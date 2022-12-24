menu actions
importGDF

	self
		import: GratchGDFImporter new
		extension: self gdfExtension
		isBinary: false