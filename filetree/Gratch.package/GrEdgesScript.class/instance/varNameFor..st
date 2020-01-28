private
varNameFor: aSelector
	aSelector = #getN1
		ifTrue: [ ^ 'n1' ].
	aSelector = #getN2
		ifTrue: [ ^ 'n2' ].
	^ super varNameFor: aSelector