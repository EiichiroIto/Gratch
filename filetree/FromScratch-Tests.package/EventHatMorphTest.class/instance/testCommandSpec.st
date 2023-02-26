test
testCommandSpec

	| obj |
	obj := self newMorph.
	self assert: obj commandSpec isString.
	obj commandSpec: 'abc'.
	self assert: obj commandSpec equals: 'abc'