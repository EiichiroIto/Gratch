private
evaluateArg: anObject script: aScript
	anObject isArray
		ifTrue: [ ^ self tupleFrom: anObject script: aScript ]
		ifFalse: [ anObject isString
				ifTrue: [ anObject isNumberString
						ifTrue: [ ^ anObject asNumberNoError ] ] ].
	^ anObject