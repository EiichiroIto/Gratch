private
setupNodeVarIds

	| varNames |
	varNames := from nodesVarNames intersection: to nodesVarNames.
	fromVarIds := varNames collect: [ :each | 
		              from varNoFor: each breed: GrBreedId nodesBreedNo ].
	toVarIds := varNames collect: [ :each | 
		            to varNoFor: each breed: GrBreedId nodesBreedNo ]