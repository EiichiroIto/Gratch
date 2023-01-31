event handling
mouseDown: evt

	| list choice ret |
	menuMorph ifNil: [ ^ super mouseDown: evt ].
	evt cursorPoint x < (menuMorph left - 1) ifTrue: [ 
		^ super mouseDown: evt ].
	list := self options.
	list isEmpty ifTrue: [ ^ self ].
	ret := SpSelectDialog new
		       label: 'Select one' localized;
		       items: list;
		       display: [ :each | each first ];
		       openModal.
	ret ifNil: [ ^ self ].
	choice := ret second.
	evt hand newKeyboardFocus: nil.
	self isListVarNames ifTrue: [ ^ self specialValue: choice ].
	isNumber
		ifTrue: [ self numExpression: choice ]
		ifFalse: [ self stringExpression: choice ]