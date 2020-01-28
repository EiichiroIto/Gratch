sensing ops
getGraphVar: var
	| m v |
	m := targetMorph project graph.
	v := var choice.
	v isEmpty
		ifTrue: [ self error ].
	^ bcGenerator getGraphVar: (m varId varNoFor: v)