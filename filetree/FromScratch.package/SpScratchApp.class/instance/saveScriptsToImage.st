menu actions
saveScriptsToImage
	"Take a snapshot of all scripts for a sprite and save as a GIF file"

	| fName saveForm |
	saveForm := presenter scriptForm.
	saveForm ifNil: [ ^ self ].
	fName := self
		chooseNewFileDefault: self projectName
		extension: 'png'
		title: 'Save script snapshot' localized
		type: #scriptsSnapshot.
	fName ifNil: [ ^ self ].
	saveForm writePNGFileNamed: fName pathString