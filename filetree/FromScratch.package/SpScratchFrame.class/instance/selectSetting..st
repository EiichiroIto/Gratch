private
selectSetting: aSymbol
	| list choice appClass ret |
	appClass := self application class.
	list := appClass optionsFor: aSymbol.
	list = #string
		ifTrue: [ ret := UIManager default
				textEntry: 'Enter for ' localized , aSymbol.
			ret ifNil: [ ^ self ] ]
		ifFalse: [ list isEmpty
				ifTrue: [ ^ self ].
			choice := UIManager default
				chooseFrom: list
				title: 'Select an option for ' localized , aSymbol.
			choice = 0
				ifTrue: [ ^ self ].
			ret := list at: choice ].
	appClass perform: (aSymbol , ':') asSymbol with: ret.
	aSymbol = #dontClose
		ifTrue: [ self updateDontCloseSetting ]