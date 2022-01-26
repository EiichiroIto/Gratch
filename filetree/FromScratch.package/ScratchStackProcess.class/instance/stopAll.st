api
stopAll
	self doReturn.
	topBlock applicationDo: [ :app | app stopAllProcesses ]