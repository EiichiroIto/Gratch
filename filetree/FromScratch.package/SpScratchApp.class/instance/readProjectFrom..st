file read/write
readProjectFrom: aFileReference

	| f projData newProj reader |
	reader := project newProjectReadWriter.
	f := aFileReference binaryReadStream.
	f ifNil: [ 
		presenter alert:
			'Could not read file: ' localized , aFileReference pathString.
		^ nil ].
	^ self class
		  try: [ 
			  projData := f contents.
			  newProj := reader extractProjectFrom: projData.
			  newProj info: (reader extractInfoFrom: projData).
			  newProj ]
		  onFailure: [ :err | 
			  presenter alert: err messageText.
			  nil ]