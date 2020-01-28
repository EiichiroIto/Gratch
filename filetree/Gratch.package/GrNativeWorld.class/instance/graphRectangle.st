accessing graph
graphRectangle
	| xMin xMax yMin yMax p |
	xMin := xMax := yMin := yMax := nil.
	self
		livingBreed: GrBreedId nodesBreedNo
		do: [ :each | 
			p := self pointAt: each.
			(xMin isNil or: [ xMin < p x ])
				ifTrue: [ xMin := p x ].
			(xMax isNil or: [ xMax > p x ])
				ifTrue: [ xMax := p x ].
			(yMin isNil or: [ yMin < p y ])
				ifTrue: [ yMin := p y ].
			(yMax isNil or: [ yMax > p y ])
				ifTrue: [ yMax := p y ] ].
	(xMin isNil or: [ yMin isNil ])
		ifTrue: [ ^ nil ].
	^ xMin @ yMin corner: xMax @ yMax