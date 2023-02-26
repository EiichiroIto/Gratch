list ops
lineCountOfList: aList

	| v |
	v := aList choice.
	v isEmpty ifTrue: [ self error ].
	^ self unaryCommand: #lineCountOfList arg: (script varNoFor: v)