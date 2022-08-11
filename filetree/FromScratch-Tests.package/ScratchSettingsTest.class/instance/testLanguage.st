test
testLanguage

	| obj |
	obj := self newObj.
	self assert: obj language isEmpty.
	obj language: 'abc'.
	self assert: obj language equals: 'abc'