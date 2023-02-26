test
testFont

	| m f |
	m := self newMorph.
	self assert: m font notNil.
	f := StandardFonts balloonFont.
	m font: f.
	self assert: m font identicalTo: f