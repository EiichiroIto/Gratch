menu actions
saveScriptsToImage
	"Take a snapshot of all scripts for a sprite and save as a GIF file"

	| file saveForm |
	saveForm := presenter scriptForm.
	saveForm ifNil: [ ^ self ].
	file := UIManager default
		chooseForSaveFileReference: 'Export ...' localized
		extensions: {self imageExtension}
		path: self projectPath.
	file ifNil: [ ^ self ].
	saveForm writePNGFileNamed: file pathString