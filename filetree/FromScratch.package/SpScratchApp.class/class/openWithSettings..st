instance creation
openWithSettings: aSettings

	ScratchTranslator setLocale: aSettings language.
	self new
		settings: aSettings;
		open