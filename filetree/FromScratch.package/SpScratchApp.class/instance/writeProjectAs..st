file read/write
writeProjectAs: aFileReference

	| saveError out tmpFile writer |
	writer := project newProjectReadWriter.
	saveError := nil.
	aFileReference parent isDirectory ifFalse: [ 
		presenter alert: 'Invalid file name.' localized.
		^ false ].
	tmpFile := (self
		            unusedNameStartingWith: 'tmp'
		            in: aFileReference parent) asFileReference.
	self class
		try: [ 
			out := tmpFile binaryWriteStream.
			out
				ifNil: [ 
				saveError := 'Folder may be locked or read-only' localized ]
				ifNotNil: [ 
					writer writeProject: project to: out.
					out close ] ]
		onFailure: [ :err | 
			out ifNotNil: [ 
				[ 
				out close.
				tmpFile delete ]
					on: Error
					do: [  ] ].
			saveError := err ].
	saveError ifNotNil: [ 
		presenter alert: saveError.
		^ false ].
	aFileReference deleteIfAbsent: [  ].
	[ tmpFile renameTo: aFileReference basename ]
		on: Error
		do: [ 
			presenter alert:
				'Save failed. The folder may be read-only.' localized.
			^ false ].
	project modified: false.
	^ true