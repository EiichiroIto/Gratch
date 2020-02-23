test
testProject
	| script |
	script := self newScript.
	self assert: script project isNil.
	script project: 123.
	self assert: script project equals: 123.
	script project: 456.
	self assert: script project equals: 456