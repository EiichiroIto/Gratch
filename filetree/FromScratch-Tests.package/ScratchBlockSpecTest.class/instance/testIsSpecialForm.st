test
testIsSpecialForm

	| obj |
	obj := self newObj.
	self deny: obj isSpecialForm.
	obj type: #isSpecialForm.
	self assert: obj isSpecialForm