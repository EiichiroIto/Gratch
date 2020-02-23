test
testTitle
	| v |
	v := self newView.
	self assert: v title isNil.
	v title: 'abc'.
	self assert: v title equals: 'abc'