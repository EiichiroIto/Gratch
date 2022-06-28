menu actions
selectSetting: aSymbol

	| list appClass ret |
	application closeMediaEditorsAndDialogs.
	appClass := application class.
	list := appClass optionsFor: aSymbol.
	ret := list = #string
		       ifTrue: [ 
			       application
				       request: 'Enter for ' localized , aSymbol
				       initialAnswer: (appClass perform: aSymbol) ]
		       ifFalse: [ 
			       list isEmpty ifTrue: [ ^ self ].
			       application
				       select: 'Select an option for ' localized , aSymbol
				       chooseFrom: list ].
	ret ifNil: [ ^ self ].
	appClass perform: (aSymbol , ':') asSymbol with: ret.
	self updateWindowSettings