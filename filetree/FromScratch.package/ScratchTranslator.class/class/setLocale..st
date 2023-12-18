accessing
setLocale: aString

	| fr tr d |
	(aString isNil or: [ aString isEmpty ]) ifTrue: [ ^ self ].
	fr := ('locale/' , aString , '.po') asFileReference.
	tr := nil.
	fr isFile
		ifTrue: [
			tr := self new.
			tr locale: aString.
			tr readFrom: fr readStream ]
		ifFalse: [
			GraphicFontSettings setFontsToStyleNamed: #small.
			tr := self defaultTranslator ].
	fr := ('locale/' , aString , '.ston') asFileReference.
	fr isFile ifTrue: [
		d := STON fromString: fr contents.
		d
			at: OSEnvironment current platform family
			ifPresent: [ :dict | tr setupFontsFromDictionary: dict ] ].
	self current: tr