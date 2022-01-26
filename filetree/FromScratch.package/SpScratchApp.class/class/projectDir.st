accessing
projectDir
	| file dict |
	file := self settings
		at: #projectDir
		ifAbsent: [ ^ FileSystem workingDirectory pathString ].
	dict := Dictionary new.
	dict at: #documents put: FileLocator documents pathString.
	file := (file trimBoth format: dict) asFileReference.
	file isDirectory
		ifFalse: [ [ file createDirectory ]
				ifError: [ file := FileSystem workingDirectory ] ].
	^ file pathString