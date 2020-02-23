sensing ops
getGraphVar: var
	| m v |
	m := script project graph.
	v := var choice.
	v isEmpty
		ifTrue: [ self error ].
	^ generator getGraphVar: (m varId varNoFor: v)