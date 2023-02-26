test
testOperatorTupleFromScript

	| i script arr |
	i := self newImporter.
	script := self newScript.
	arr := {'plus:and:' . '123' . 'x'}.
	arr := i operatorTupleFrom: arr script: script.
	self assert: arr size equals: 3.
	self assert: arr first equals: #plus:and:.
	self assert: arr second equals: 123.
	self assert: arr third equals: 'x'