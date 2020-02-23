basic ops
setAllEdgesTo: aList
	| v |
	v := aList choice.
	v isEmpty
		ifTrue: [ self error ].
	generator
		setElements: GrCommandId allEdgesCommandNo
		arg: 0
		toList: (script varId varNoFor: v)