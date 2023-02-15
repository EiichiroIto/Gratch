test
testDefaultTranslator

	| obj |
	obj := ScratchTranslator defaultTranslator.
	self assert: obj locale equals: 'en'