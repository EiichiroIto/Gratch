private
tupleFrom: aCollection script: aScript

	| selector tuple |
	selector := aCollection first asSymbol.
	(aScript getVarSelectors includes: selector) ifTrue: [ 
		^ self getVarTupleFrom: aCollection script: aScript ].
	(aScript setVarSelectors includes: selector) ifTrue: [ 
		^ self setVarTupleFrom: aCollection script: aScript ].
	(aScript ifElseBlockSelectors includes: selector) ifTrue: [ 
		^ self ifElseTupleFrom: aCollection script: aScript ].
	(aScript cBlockSelectors includes: selector) ifTrue: [ 
		^ self cBlockTupleFrom: aCollection script: aScript ].
	tuple := aCollection copy.
	self updateArgs: tuple script: aScript.
	^ tuple