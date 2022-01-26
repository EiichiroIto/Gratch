accessing
projectDirectory
	^ projectDirectory
		ifNil: [ projectDirectory := self class projectDir asFileReference ]