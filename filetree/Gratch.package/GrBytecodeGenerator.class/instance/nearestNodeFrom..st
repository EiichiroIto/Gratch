sensing ops
nearestNodeFrom: node

	self unaryCommand: #nearestFrom arg: [ node argString: parser ].
	^ nil