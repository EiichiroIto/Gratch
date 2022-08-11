initialization
initialize

	settings := self class settingsClass new.
	self loadSettings.
	ScratchTranslator setLocale: settings language.
	super initialize