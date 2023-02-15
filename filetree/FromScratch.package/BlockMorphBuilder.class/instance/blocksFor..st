api
blocksFor: aCategory

	| list |
	list := blockSpecsInCategory at: aCategory ifAbsent: [ ^ Array new ].
	^ list collect: [ :each | 
		  each isBlockSpec
			  ifTrue: [ self blockFromSpec: each ]
			  ifFalse: [ each ] ]