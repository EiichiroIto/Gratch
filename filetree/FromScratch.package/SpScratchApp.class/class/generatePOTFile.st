utilities
generatePOTFile

	| strings file |
	strings := Set new.
	ScratchTranslator addLocalizedTextsTo: strings.
	self addBlockDefsTo: strings.
	file := FileSystem workingDirectory / self appName withExtension:
		        'pot'.
	ScratchTranslator writePOT: strings file: file