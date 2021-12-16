private
chooseNewFileDefault: filename extension: ext title: aString type: aSymbol
	^ self class useStdDialog
		ifTrue: [ self
				chooseNewFileStdDefault: filename
				extension: ext
				title: aString
				type: aSymbol ]
		ifFalse: [ self
				chooseNewFileNativeDefault: filename
				extension: ext
				title: aString
				type: aSymbol ]