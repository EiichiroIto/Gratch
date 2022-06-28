settings
loadSettings
	| fr dict |
	fr := FileSystem workingDirectory / self settingsFilename.
	fr isFile
		ifFalse: [ ^ self ].
	dict := STON fromString: fr contents.
	dict isDictionary
		ifFalse: [ ^ self ].
	dict keys
		do: [ :each | 
			(self respondsTo: each asSymbol)
				ifFalse: [ dict removeKey: each ] ].
	Settings := dict