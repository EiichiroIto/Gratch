test
testEventName

	| obj |
	obj := self newMorph.
	self assert: obj eventName isEmpty.
	obj eventName: 'abc'.
	self assert: obj eventName equals: 'abc'.
	obj eventName: 'def'.
	self assert: obj eventName equals: 'def'