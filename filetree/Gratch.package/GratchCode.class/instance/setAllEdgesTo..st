basic ops
setAllEdgesTo: aList
	| v |
	v := aList choice.
	v isEmpty
		ifTrue: [ self error ].
	bcGenerator
		setElements: GrCommandId allEdgesCommandNo
		arg: 0
		toList: (targetMorph varId varNoFor: v)