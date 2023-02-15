test
testLocale

	| obj |
	obj := self newTranslator.
	self assert: obj locale isNil.
	obj locale: 'en'.
	self assert: obj locale equals: 'en'.
	obj locale: 'ja'.
	self assert: obj locale equals: 'ja'