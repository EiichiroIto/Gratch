test
testBreed
	| script |
	script := self newScript.
	self assert: script breed isNil.
	script breed: 123.
	self assert: script breed equals: 123.
	script breed: 456.
	self assert: script breed equals: 456