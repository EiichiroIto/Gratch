test
testIsValidSubName

	| script |
	script := self newScript.
	self assert: (script isValidSubName: 'abc').
	self assert: (script isValidSubName: 'a12').
	self assert: (script isValidSubName: '123').
	self deny: (script isValidSubName: 'abc def')