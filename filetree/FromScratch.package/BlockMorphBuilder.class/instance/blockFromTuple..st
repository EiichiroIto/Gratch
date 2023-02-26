api
blockFromTuple: anArray

	"Answer a new block for the given tuple."

	| k spec block argCount arg argBlock tuple |
	tuple := script convertEventHatTuple: anArray.
	k := tuple first.
	k = #localVar ifTrue: [ ^ self localVarBlockFor: tuple second ].
	(script variableBlockSelectors includes: k) ifTrue: [ 
		^ self variableBlockFromTuple: tuple ].
	k = #sub: ifTrue: [ ^ self subHatBlockFor: tuple second ].
	spec := self blockSpecAt: k.
	spec ifNil: [ ^ self unknownBlockFor: k ].
	block := self blockFromSpec: spec.
	block isHatBlock ifTrue: [ block defaultArgs: tuple copyWithoutFirst ].
	block isCommandBlock ifTrue: [ 
		argCount := block argumentCount min: tuple size - 1.
		1 to: argCount do: [ :i | 
			arg := tuple at: i + 1.
			arg isArray
				ifTrue: [ "argument is a block"
					(arg size = 1 and: [ arg first isArray ]) ifTrue: [ 
						arg := arg first ].
					argBlock := self blockFromTuple: arg.
					block replaceArgMorph: (block argumentAt: i) by: argBlock ]
				ifFalse: [ "argument is a value" 
				(block argumentAt: i) defaultValue: arg ] ].
		block isCBlock ifTrue: [ 
			tuple last isArray ifTrue: [ 
				block firstBlockList: (self stackFromTupleList: tuple last) ] ].
		block isIfElseBlock ifTrue: [ 
			arg := tuple at: tuple size - 1.
			arg isArray ifTrue: [ 
				block trueBlock: (self stackFromTupleList: arg) ].
			arg := tuple last.
			arg isArray ifTrue: [ 
				block falseBlock: (self stackFromTupleList: arg) ] ].
		(block isReporter and: [ spec isBooleanReporter ]) ifTrue: [ 
			block isBoolean: true ] ].
	^ block