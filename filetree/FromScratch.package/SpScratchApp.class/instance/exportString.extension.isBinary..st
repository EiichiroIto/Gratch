private
exportString: aContentsString extension: aString isBinary: aBoolean

	| file f |
	self closeMediaEditorsAndDialogs.
	self stopAllProcesses.
	file := presenter
		        chooseForSaveFileReference: 'Export ...' localized
		        extensions: { aString }
		        path: self extraPath.
	file ifNil: [ ^ self ].
	self extraDirectory: file parent.
	f := nil.
	self class
		try: [ 
			f := aBoolean
				     ifTrue: [ file binaryWriteStream ]
				     ifFalse: [ file writeStream ].
			f nextPutAll: aContentsString.
			f close ]
		onFailure: [ 
			f ifNotNil: [ f close ].
			presenter alert: 'Could not write file: ' localized , file basename ]