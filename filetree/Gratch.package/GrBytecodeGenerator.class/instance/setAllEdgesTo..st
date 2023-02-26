list ops
setAllEdgesTo: aList

	| v |
	v := aList choice.
	v isEmpty ifTrue: [ self error ].
	self
		setElements: GrCommandId allEdgesCommandNo
		arg: 0
		toList: (script varNoFor: v)