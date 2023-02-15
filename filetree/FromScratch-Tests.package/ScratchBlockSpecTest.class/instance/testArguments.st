test
testArguments

	| obj a |
	obj := self newObj.
	self assert: obj arguments isNil.
	a := #( 1 2 3 ).
	obj arguments: a.
	self assert: obj arguments identicalTo: a