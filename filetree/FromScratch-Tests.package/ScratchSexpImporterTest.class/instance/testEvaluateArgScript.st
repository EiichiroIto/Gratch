test
testEvaluateArgScript
	| i script |
	i := self newImporter.
	script := self newScript.
	self assert: (i evaluateArg: 'abc' script: script) equals: 'abc'.
	self assert: (i evaluateArg: '123' script: script) equals: 123.
	self assert: (i evaluateArg: '123x' script: script) equals: '123x'.
	self assert: (i evaluateArg: true script: script) equals: true