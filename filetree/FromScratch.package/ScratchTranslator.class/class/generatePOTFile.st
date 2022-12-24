utilities
generatePOTFile

	"ScratchTranslator generatePOTFile"

	| list strings |
	strings := Set new.
	list := ScratchScript allSubclasses collect: [ :each | each new ].
	self addBlockDefs: list to: strings.
	self addLocalizedTextsTo: strings.
	self writePOT: strings fileNamed: 'app.pot'