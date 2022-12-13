settings
selectSetting: aSymbol

	| list ret old |
	self closeMediaEditorsAndDialogs.
	list := settings optionsFor: aSymbol.
	ret := list = #string
		       ifTrue: [ 
			       self
				       request: 'Enter for ' localized , aSymbol
				       initialAnswer: (self settingAt: aSymbol) ]
		       ifFalse: [ 
			       list isEmpty ifTrue: [ ^ self ].
			       self
				       select: 'Select an option for ' localized , aSymbol
				       chooseFrom: list ].
	ret ifNil: [ ^ self ].
	ret = (self settingAt: aSymbol) ifTrue: [ ^ self ].
	self settingAt: aSymbol put: ret.
	aSymbol = #language ifFalse: [ ^ self ].
	(self confirm: 'Language settings has changed. Restart application?') 
		ifFalse: [ ^ self ].
	old := self settingAt: #dontClose.
	self settingAt: #dontClose put: false.
	presenter updateWindowSettings.
	self closeAllWindows.
	self settingAt: #dontClose put: old.
	self class openWithSettings: settings