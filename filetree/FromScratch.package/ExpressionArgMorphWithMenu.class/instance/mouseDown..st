event handling
mouseDown: evt

	| rcvr list choice ret |
	menuMorph ifNil: [ ^ super mouseDown: evt ].
	evt cursorPoint x < (menuMorph left - 1) ifTrue: [ 
		^ super mouseDown: evt ].
	rcvr := self getOptionsTarget.
	rcvr ifNil: [ rcvr := owner receiver ].
	(self getOptionsSelector isNil or: [ rcvr isNil ]) ifTrue: [ 
		^ self beep ].
	list := rcvr perform: self getOptionsSelector.
	list isEmpty ifTrue: [ ^ self ].
	ret := SpSelectDialog new
		       label: 'Select one' localized;
		       items: list;
		       display: [ :each | each first ];
		       openModal.
	ret ifNil: [ ^ self ].
	choice := ret second.
	evt hand newKeyboardFocus: nil.
	(#( listIndexNames listIndexForDeleteNames ) includes:
		 getOptionsSelector) ifTrue: [ ^ self specialValue: choice ].
	isNumber
		ifTrue: [ self numExpression: choice ]
		ifFalse: [ self stringExpression: choice ]