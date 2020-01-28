private
edgeListOf: aDictionary
	| list |
	list := grWorld edgeIndexConnectedIn: aDictionary keys.
	list := list
		collect: [ :each | 
			| n1 n2 |
			n1 := grWorld n1At: each.
			n2 := grWorld n2At: each.
			{(aDictionary at: n1) first.
			(aDictionary at: n2) first.
			(grWorld
				var: GrEdgesVarDef colorVarNo
				breed: GrBreedId edgesBreedNo
				at: each).
			(self edgeLabelsFor: each)} ].
	^ list