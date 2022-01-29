private
stringOfWorldName: aString
	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: ' (';
		nextPutAll: aString;
		nextPut: $).
	self isRecording
		ifTrue: [ stream nextPutAll: ' (Recording)' localized ].
	^ stream contents