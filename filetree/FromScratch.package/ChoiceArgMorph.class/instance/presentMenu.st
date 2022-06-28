private
presentMenu

	"Pop up a menu of choices."

	| list ret |
	list := self options reject: [ :each | each = '-' ].
	list isEmpty ifTrue: [ ^ self ].
	ret := SpScratchApp
		       select: 'Select one' localized
		       chooseFrom: ((#( varNames ) includes: getOptionsSelector)
				        ifTrue: [ list ]
				        ifFalse: [ list collect: #localized ]).
	ret ifNil: [ ^ self ].
	self choice: ret