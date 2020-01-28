private
varNameFor: aSelector
	aSelector = #getId
		ifTrue: [ ^ 'id' ].
	^ nil