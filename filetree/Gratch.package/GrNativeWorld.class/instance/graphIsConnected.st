accessing graph
graphIsConnected
	| unconnected n rest adjs |
	unconnected := self allNodes asSet.
	unconnected isEmpty
		ifTrue: [ ^ true ].
	n := unconnected anyOne.
	rest := {n} asOrderedCollection.
	unconnected remove: n.
	[ rest notEmpty ]
		whileTrue: [ n := rest removeFirst.
			adjs := self adjacentNodesTo: n.
			adjs := adjs intersection: unconnected.
			rest addAll: adjs.
			unconnected removeAll: adjs ].
	^ unconnected isEmpty