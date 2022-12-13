instance creation
open

	| settings |
	settings := self settingsClass new.
	settings loadFile:
		FileSystem workingDirectory / self settingsFilename.
	self openWithSettings: settings