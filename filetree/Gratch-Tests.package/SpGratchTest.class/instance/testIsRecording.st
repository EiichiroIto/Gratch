test
testIsRecording
	| a |
	a := self newApp.
	self deny: a isRecording.
	a privRecorder: true.
	self assert: a isRecording.
	a privRecorder: nil.
	self deny: a isRecording