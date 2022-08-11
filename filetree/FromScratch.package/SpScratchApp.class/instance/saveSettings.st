settings
saveSettings

	| fr stream |
	fr := FileSystem workingDirectory / self class settingsFilename.
	fr isFile ifTrue: [ fr delete ].
	stream := fr writeStream.
	STON put: settings dictionary onStream: stream.
	stream close