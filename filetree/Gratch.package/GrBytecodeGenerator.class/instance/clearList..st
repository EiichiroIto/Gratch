list ops
clearList: aList

	| v |
	v := aList choice.
	v isEmpty ifTrue: [ self error ].
	self
		setElements: GrCommandId clearListCommandNo
		arg: 0
		toList: (script varNoFor: v)