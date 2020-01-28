test
testWhenDeletedDo
	| v b |
	v := self newView.
	self assert: v whenDeletedDo isNil.
	v whenDeletedDo: 123.
	self assert: v whenDeletedDo equals: 123.
	b := 0.
	v whenDeletedDo: [ b := 456 ].
	v delete.
	self assert: b equals: 456