accessing
projectDirectory

	| file dict |
	projectDirectory ifNotNil: [ ^ projectDirectory ].
	file := settings projectDir.
	dict := Dictionary new.
	dict at: #documents put: FileLocator documents pathString.
	file := (file trimBoth format: dict) asFileReference.
	file isDirectory ifFalse: [ 
		[ file createDirectory ]
			on: Error
			do: [ file := FileSystem workingDirectory ] ].
	^ file pathString asFileReference