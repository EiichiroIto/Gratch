accessing
projectDirectory
	^ projectDirectory
		ifNil: [ self class projectDir asFileReference ]