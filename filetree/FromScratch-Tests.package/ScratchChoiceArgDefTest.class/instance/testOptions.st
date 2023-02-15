test
testOptions

	| obj a |
	obj := self newObj.
	self assert: obj options isNil.
	a := #( a b c ).
	obj options: a.
	self assert: obj options identicalTo: a