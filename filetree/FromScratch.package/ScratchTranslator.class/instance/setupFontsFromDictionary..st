private
setupFontsFromDictionary: aDictionary

	aDictionary at: 'ArgFont' ifPresent: [ :str |
		(self fontFromString: str) ifNotNil: [ :font |
			self fontAt: 'Arg' put: font ] ].
	aDictionary at: 'ButtonFont' ifPresent: [ :str |
		(self fontFromString: str) ifNotNil: [ :font |
			self fontAt: 'Button' put: font.
			StandardFonts buttonFont: font ] ].
	aDictionary at: 'LabelFont' ifPresent: [ :str |
		(self fontFromString: str) ifNotNil: [ :font |
			self fontAt: 'Label' put: font.
			StandardFonts
				listFont: font;
				menuFont: font;
				defaultFont: font ] ].
	aDictionary at: 'CodeFont' ifPresent: [ :str |
		(self fontFromString: str) ifNotNil: [ :font |
			StandardFonts codeFont: font ] ].
	aDictionary at: 'TitleFont' ifPresent: [ :str |
		(self fontFromString: str) ifNotNil: [ :font |
			StandardFonts
				windowTitleFont: font;
				balloonFont: font ] ]