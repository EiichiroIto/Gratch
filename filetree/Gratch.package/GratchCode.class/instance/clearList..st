variable ops
clearList: aList
	| v |
	v := aList choice.
	v isEmpty
		ifTrue: [ self error ].
	bcGenerator
		setElements: GrCommandId clearListCommandNo
		arg: 0
		toList: (targetMorph varId varNoFor: v)