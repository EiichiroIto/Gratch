private
chooseNewFileStdDefault: filename extension: ext title: aString type: aSymbol
	^ UIManager default
		chooseForSaveFileReference: aString
		extensions: {ext}
		path: filename