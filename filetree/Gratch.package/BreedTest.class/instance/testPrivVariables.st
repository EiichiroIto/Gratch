test
testPrivVariables
	| obj |
	obj := self newBreed.
	self assert: obj privVariables class equals: Variables.