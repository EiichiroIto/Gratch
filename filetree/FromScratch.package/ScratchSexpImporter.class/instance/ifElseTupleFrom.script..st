private
ifElseTupleFrom: anArray script: aScript
	| cond trueBlock falseBlock |
	cond := self tupleFrom: anArray second script: aScript.
	trueBlock := anArray third.
	trueBlock := trueBlock isEmpty
		ifTrue: [ nil ]
		ifFalse: [ trueBlock collect: [ :each | self tupleFrom: each script: aScript ] ].
	falseBlock := anArray fourth.
	falseBlock := falseBlock isEmpty
		ifTrue: [ nil ]
		ifFalse: [ falseBlock collect: [ :each | self tupleFrom: each script: aScript ] ].
	^ {anArray first asSymbol.
	cond.
	trueBlock.
	falseBlock}