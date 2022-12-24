private
setupEdgeVarIds

	| varNames |
	varNames := from edgesVarNames intersection: to edgesVarNames.
	fromVarIds := varNames collect: [ :each | 
		              from varNoFor: each breed: GrBreedId edgesBreedNo ].
	toVarIds := varNames collect: [ :each | 
		            to varNoFor: each breed: GrBreedId edgesBreedNo ]