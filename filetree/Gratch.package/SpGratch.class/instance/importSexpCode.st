menu actions
importSexpCode

	self
		import: (ScratchSexpImporter appName: self appName)
		extension: self sexpExtension
		isBinary: false