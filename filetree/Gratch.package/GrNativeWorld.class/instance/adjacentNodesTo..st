accessing nodes
adjacentNodesTo: node
	| list |
	list := Set new.
	self edges
		withLivingOnesDo: [ :each :edges | 
			| n1 n2 |
			n1 := self n1At: each.
			n2 := self n2At: each.
			n1 = node
				ifTrue: [ list add: n2 ].
			n2 = node
				ifTrue: [ list add: n1 ] ].
	list remove: node ifAbsent: [  ].
	^ list