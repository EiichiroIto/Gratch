private
statisticsNoOf: cmd
	cmd = 'sum'
		ifTrue: [ ^ GrCommandId sumCommandNo ].
	cmd = 'average'
		ifTrue: [ ^ GrCommandId averageCommandNo ].
	cmd = 'max'
		ifTrue: [ ^ GrCommandId maxCommandNo ].
	cmd = 'min'
		ifTrue: [ ^ GrCommandId minCommandNo ].
	cmd = 'id with largest'
		ifTrue: [ ^ GrCommandId maxElementCommandNo ].
	cmd = 'id with smallest'
		ifTrue: [ ^ GrCommandId minElementCommandNo ].
	^ 0