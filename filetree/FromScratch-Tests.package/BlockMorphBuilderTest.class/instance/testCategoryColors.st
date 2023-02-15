test
testCategoryColors

	| obj a |
	obj := self newBlockMorphBuilder.
	self assert: obj categoryColors isDictionary.
	self assert: obj categoryColors isEmpty.
	a := Dictionary new.
	obj categoryColors: a.
	self assert: obj categoryColors identicalTo: a