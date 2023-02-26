private
presentMenu

	"Pop up a menu of choices."

	| list ret |
	list := self argList.
	list isEmpty ifTrue: [ ^ self ].
	ret := SpScratchPresenter select: 'Select one' localized chooseFrom: list.
	ret ifNil: [ ^ self ].
	self choice: ret