test
testStringOfWorldName
	| a r |
	a := self newApp.
	r := a stringOfWorldName: 'test'.
	self assert: r equals: ' (test)'.
	a privRecorder: true.
	r := a stringOfWorldName: 'abc'.
	self assert: r equals: ' (abc)' , ' (Recording)' localized