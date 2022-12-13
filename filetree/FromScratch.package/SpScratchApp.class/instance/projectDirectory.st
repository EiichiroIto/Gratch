accessing
projectDirectory

	| file dict |
	projectDirectory ifNotNil: [ ^ projectDirectory ].
	file := settings projectDir trimBoth.
	file isEmpty ifTrue: [ ^ FileSystem workingDirectory ].
	dict := Dictionary new.
	dict at: #documents put: FileLocator documents pathString.
	dict at: #app put: self appFolderName.
	file := (file format: dict) asFileReference.
	file isDirectory ifFalse: [ 
		[ file createDirectory ]
			on: Error
			do: [ file := FileSystem workingDirectory ] ].
	^ file