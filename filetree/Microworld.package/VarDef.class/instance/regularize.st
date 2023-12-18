accessing
regularize

	varNames ifNotNil: [
		varNames := varNames copyWithoutAll: reservedVarNames.
		varNames := reservedVarNames , varNames.
		varNames := varNames asArray ].
	varClasses ifNotNil: [
		varClasses keysAndValuesDo: [ :key :value |
			value = #FloatArray ifTrue: [
				varClasses at: key put: #Float32Array ] ] ]