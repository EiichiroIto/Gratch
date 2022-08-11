test
testDictionary

	| obj d |
	obj := self newObj.
	self assert: obj dictionary isDictionary.
	d := Dictionary new.
	obj dictionary: d.
	self assert: obj dictionary identicalTo: d