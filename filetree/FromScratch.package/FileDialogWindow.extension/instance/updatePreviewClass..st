*FromScratch
updatePreviewClass: aClass
	"Update the image preview."

	| str form |
	self selectedFileEntry ifNil: [ ^ self ].
	str := self openSelectedFileAsBinary.
	str ifNil: [ ^ self previewMorph image: nil size: self previewSize ].
	[ [ form := aClass formFromStream: str ]
		on: Error
		do: [  ] ]
		ensure: [ str close ].
	self previewMorph image: form size: self previewSize