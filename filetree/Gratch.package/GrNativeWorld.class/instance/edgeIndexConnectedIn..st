accessing edges
edgeIndexConnectedIn: aCollection
	| set n1 n2 |
	set := aCollection asSet.
	^ self edges
		withElementsSelect: [ :index :edges | 
			n1 := self n1At: index.
			n2 := self n2At: index.
			(set includes: n1) and: [ set includes: n2 ] ]