private
variableBlockFromTuple: tuple

	| varName selector block arg argBlock |
	varName := tuple at: 2.
	(script varNames includes: varName) ifFalse: [ 
		script addVariable: varName ].
	tuple first = #readVariable ifTrue: [ 
		^ self variableBlockFor: varName ].
	tuple first = #changeVariable ifTrue: [ 
		selector := tuple at: 3.
		selector = #set:to: ifTrue: [ selector := #setVar:to: ].
		block := selector = #setVar:to:
			         ifTrue: [ self setVarBlockFor: varName ]
			         ifFalse: [ self changeVarBlockFor: varName ].
		arg := tuple at: 4.
		arg isArray
			ifTrue: [ 
				(arg size = 1 and: [ arg first isArray ]) ifTrue: [ 
					arg := arg first ].
				argBlock := self blockFromTuple: arg.
				block replaceArgMorph: block expressionArg by: argBlock ]
			ifFalse: [ block expressionArg defaultValue: arg ].
		^ block ].
	self error: 'unknown variable spec!'