private
exportString: aContentsString extension: aString isBinary: aBoolean
	| file f |
	self closeMediaEditorsAndDialogs.
	self stopAllProcesses.
	file := UIManager default
		chooseForSaveFileReference: 'Export ...' localized
		extensions: {aString}
		path: self projectPath.
	file ifNil: [ ^ self ].
	f := nil.
	self class
		try: [ f := aBoolean
				ifTrue: [ file binaryWriteStream ]
				ifFalse: [ file writeStream ].
			f nextPutAll: aContentsString.
			f close ]
		onFailure: [ f ifNotNil: [ f close ].
			UIManager default
				alert: 'Could not write file: ' localized , file basename
				title: 'Export failed' localized ]