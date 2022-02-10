*FromScratch
updateImagePreview
	"Update the image preview."

	| str form |
	self selectedFileEntry ifNil: [ ^ self ].
	(self isImageFile: self selectedFileName)
		ifFalse: [ ^ self previewMorph image: nil size: self previewSize ].
	str := self openSelectedFileAsBinary.
	str ifNil: [ ^ self ].
	[ [ form := ImageReadWriter formFromStream: str ]
		on: Error
		do: [  ] ]
		ensure: [ str close ].
	self previewMorph image: form size: self previewSize