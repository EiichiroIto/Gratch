private
varNameFor: aSelector
	aSelector = #getXpos
		ifTrue: [ ^ 'x' ].
	aSelector = #getYpos
		ifTrue: [ ^ 'y' ].
	aSelector = #getName
		ifTrue: [ ^ 'name' ].
	^ super varNameFor: aSelector