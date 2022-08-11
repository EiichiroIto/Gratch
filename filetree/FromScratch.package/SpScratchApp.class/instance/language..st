settings
language: aString

	| old |
	old := settings language.
	(ScratchTranslator setLocale: aString) ifFalse: [ ^ self ].
	settings language: aString.
	old = aString ifTrue: [ ^ self ].
	(self confirm: 'Language settings has changed. Restart application?') 
		ifFalse: [ ^ self ].
	self saveSettings.
	Smalltalk snapshot: false andQuit: true