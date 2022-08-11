settings
selectSetting: aSymbol

	| list ret |
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
	self settingAt: aSymbol put: ret