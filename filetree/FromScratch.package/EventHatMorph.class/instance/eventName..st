accessing
eventName: aString

	scriptNameMorph eventName: aString.
	self fixBlockLayout.
	self applicationDo: [ :app | app updateContents ]