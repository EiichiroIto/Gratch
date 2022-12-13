private
importFileWithExtension: aString isBinary: aBoolean

	| file f code |
	self closeMediaEditorsAndDialogs.
	self stopAllProcesses.
	file := UIManager default
		        chooseExistingFileReference: 'Import ...' localized
		        extensions: { aString }
		        path: self extraDirectory.
	file ifNil: [ ^ nil ].
	file isFile ifFalse: [ ^ nil ].
	self extraDirectory: file parent.
	f := aBoolean
		     ifTrue: [ file binaryReadStream ]
		     ifFalse: [ file readStream ].
	^ self class
		  try: [ 
			  code := f contents.
			  f close.
			  { 
				  code.
				  file } ]
		  onFailure: [ 
			  f ifNotNil: [ f close ].
			  self alert: 'Could not read file: ' localized , file basename.
			  nil ]