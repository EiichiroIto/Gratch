accessing
setLocale: aString
	| fr tr |
	aString ifEmpty: [ ^ false ].
	fr := ('locale/' , aString , '.po') asFileReference.
	fr isFile
		ifFalse: [ self current: nil.
			GraphicFontSettings resetAllFontToDefault.
			^ aString = 'en' ].
	tr := self new.
	tr readFrom: fr readStream.
	tr setupFonts.
	self current: tr.
	^ true