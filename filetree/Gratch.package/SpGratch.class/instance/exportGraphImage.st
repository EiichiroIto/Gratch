menu actions
exportGraphImage

	| file saveForm |
	grWorld isEmpty ifTrue: [ ^ self ].
	saveForm := self graphFormExtent: 480 @ 480.
	saveForm ifNil: [ ^ self ].
	file := UIManager default
		        chooseForSaveFileReference: 'Export ...' localized
		        extensions: { self imageExtension }
		        path: self extraPath.
	file ifNil: [ ^ self ].
	self extraDirectory: file parent.
	saveForm writePNGFileNamed: file pathString