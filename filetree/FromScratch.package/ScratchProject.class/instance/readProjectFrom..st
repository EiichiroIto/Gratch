file read/write
readProjectFrom: aFileReference

	| f projData newProj |
	f := aFileReference binaryReadStream.
	f ifNil: [ 
		SpScratchApp alert:
			'Could not read file: ' localized , aFileReference pathString.
		^ nil ].
	SpScratchApp
		try: [ 
			projData := f contents.
			newProj := self extractProjectFrom: projData.
			newProj extractInfoFrom: projData ]
		onFailure: [ :err | 
			SpScratchApp alert: err messageText.
			^ nil ].
	self modified: false.
	^ newProj