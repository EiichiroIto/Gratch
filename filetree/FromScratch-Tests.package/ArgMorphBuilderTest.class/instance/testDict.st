test
testDict

	| obj a |
	obj := self newBuilder.
	self assert: obj dict isDictionary.
	a := Dictionary new.
	obj dict: a.
	self assert: obj dict identicalTo: a