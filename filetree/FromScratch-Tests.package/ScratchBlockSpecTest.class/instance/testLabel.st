test
testLabel

	| obj |
	obj := self newObj.
	self assert: obj label isNil.
	obj label: 'init %a'.
	self assert: obj label equals: 'init %a'.
	obj label: 'return'.
	self assert: obj label equals: 'return'