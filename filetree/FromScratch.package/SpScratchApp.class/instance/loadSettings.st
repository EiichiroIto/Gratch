settings
loadSettings

	| fr dict |
	fr := FileSystem workingDirectory / self class settingsFilename.
	fr isFile ifFalse: [ ^ self ].
	dict := STON fromString: fr contents.
	dict isDictionary ifFalse: [ ^ self ].
	dict keysDo: [ :each | 
		(settings respondsTo: each asSymbol) ifFalse: [ dict removeKey: each ] ].
	settings dictionary: dict