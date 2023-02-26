list ops
getLine: anInteger ofList: aList

	| v |
	v := aList choice.
	v isEmpty ifTrue: [ self error ].
	^ self
		  binaryCommand: #getLineOfList
		  arg1: (script varNoFor: v)
		  arg2: [ anInteger argString: parser ]