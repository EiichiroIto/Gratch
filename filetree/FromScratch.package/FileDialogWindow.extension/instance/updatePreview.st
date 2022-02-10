*FromScratch
updatePreview
	"Update the preview."

	self previewType == #image
		ifTrue: [ self updateImagePreview ].
	self previewType == #text
		ifTrue: [ self updateTextPreview ].
	self previewType isClass
		ifTrue: [ self updatePreviewClass: self previewType ]