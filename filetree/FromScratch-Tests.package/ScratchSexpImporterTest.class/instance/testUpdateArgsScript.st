test
testUpdateArgsScript
	| i script arr |
	i := self newImporter.
	script := self newScript.
	arr := {'abc' . '123' . 'x'}.
	i updateArgs: arr script: script.
	self assert: arr size equals: 3.
	self assert: arr first equals: #abc.
	self assert: arr second equals: 123.
	self assert: arr third equals: 'x'