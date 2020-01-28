private
updateStatus
	| str |
	str := ' (', grWorld worldName, ')'.
	self isRecording
		ifTrue: [ str := str, ' (Recording)' ].
	presenter status: str