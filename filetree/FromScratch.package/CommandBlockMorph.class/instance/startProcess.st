processes
startProcess
	self stopProcess.
	receiver ifNil: [ ^ self ].
	self applicationDo: [ :app | app startProcessFor: self ].
	self changed