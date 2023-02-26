arithmetic ops
computeFunction: aSymbol of: aNumber

	| op |
	op := aSymbol choice.
	op = 'e ^' ifTrue: [ op := 'exp' ].
	op = '10 ^' ifTrue: [ op := 'exp10' ].
	^ self unaryCommand: op asSymbol arg: [ aNumber argString: parser ]