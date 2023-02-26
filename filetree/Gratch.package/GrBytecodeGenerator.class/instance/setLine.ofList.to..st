list ops
setLine: anInteger ofList: aList to: aNumber

	| v |
	v := aList choice.
	v isEmpty ifTrue: [ self error ].
	self appendValue: [ anInteger argString: parser ].
	self appendValue: [ aNumber argString: parser ].
	self appendValue: (script varNoFor: v).
	self appendSymbol: #setLineOfListTo