settings
selectSetting: aSymbol

	| list ret old |
	self closeMediaEditorsAndDialogs.
	list := settings optionsFor: aSymbol.
	ret := list = #string
		       ifTrue: [ 
			       presenter
				       request: 'Enter for ' localized , aSymbol
				       initialAnswer: (self settingAt: aSymbol) ]
		       ifFalse: [ 
			       list isEmpty ifTrue: [ ^ self ].
			       presenter
				       select: 'Select an option for ' localized , aSymbol
				       chooseFrom: list ].
	ret ifNil: [ ^ self ].
	ret = (self settingAt: aSymbol) ifTrue: [ ^ self ].
	self settingAt: aSymbol put: ret.
	aSymbol = #language ifFalse: [ ^ self ].
	(presenter confirm: 'Language settings has changed. Restart application?' localized) 
		ifFalse: [ ^ self ].
	old := self settingAt: #dontClose.
	self settingAt: #dontClose put: false.
	presenter updateWindowSettings.
	self closeAllWindows.
	self settingAt: #dontClose put: old.
	self class openWithSettings: settings