accessing
toggleHighlightBreed: bno at: anInteger
	bno = GrBreedId nodesBreedNo
		ifTrue: [ highlightEdge := nil.
			highlightNode := highlightNode
				ifNil: [ anInteger ]
				ifNotNil: [ highlightNode = anInteger
						ifTrue: [ nil ]
						ifFalse: [ anInteger ] ].
			^ highlightNode ].
	bno = GrBreedId edgesBreedNo
		ifTrue: [ highlightNode := nil.
			highlightEdge := highlightEdge
				ifNil: [ anInteger ]
				ifNotNil: [ highlightEdge = anInteger
						ifTrue: [ nil ]
						ifFalse: [ anInteger ] ].
			^ highlightEdge ].
	^ nil