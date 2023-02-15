private
defaultTranslator

	| obj |
	obj := self new.
	obj locale: 'en'.
	obj fontAt: #Arg put: StandardFonts defaultFont.
	obj fontAt: #Button put: StandardFonts buttonFont.
	obj fontAt: #Label put: StandardFonts listFont.
	^ obj