test
testBlockSpecsInCategory

	| obj a |
	obj := self newBlockMorphBuilder.
	self assert: obj blockSpecsInCategory isDictionary.
	self assert: obj blockSpecsInCategory isEmpty.
	a := Dictionary new.
	obj blockSpecsInCategory: a.
	self assert: obj blockSpecsInCategory identicalTo: a