variable ops
changeVar: var by: aNumber

	| v |
	v := var choice.
	v isEmpty ifTrue: [ self error ].
	self appendValue: [ script varNoFor: v ].
	self appendSymbol: #dup.
	self appendSymbol: #getVar.
	self appendValue: [ aNumber argString: parser ].
	self appendSymbol: #plus.
	self appendSymbol: #setVarTo