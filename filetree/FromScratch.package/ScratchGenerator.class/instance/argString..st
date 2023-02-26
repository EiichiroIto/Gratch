arg generator
argString: anArgMorph

	^ anArgMorph labelMorph
		  ifNil: [ 0 ]
		  ifNotNil: [ self literalStringFrom: anArgMorph evaluate ]