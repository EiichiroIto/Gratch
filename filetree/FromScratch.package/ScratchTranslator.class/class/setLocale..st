accessing
setLocale: aString

	| fr tr |
	(aString isNil or: [ aString isEmpty ]) ifTrue: [ ^ self ].
	fr := ('locale/' , aString , '.po') asFileReference.
	tr := nil.
	fr isFile
		ifTrue: [ 
			tr := self new.
			tr locale: aString.
			tr readFrom: fr readStream.
			tr setupFonts ]
		ifFalse: [ 
			GraphicFontSettings setFontsToStyleNamed: #small.
			tr := self defaultTranslator ].
	self current: tr