private
setupScripts
	graph := GrGraphScript new
		breed: application newGraph;
		project: self;
		yourself.
	nodes := GrNodesScript new
		breed: application newNodes;
		project: self;
		yourself.
	edges := GrEdgesScript new
		breed: application newEdges;
		project: self;
		yourself.
	self
		addScript: graph;
		addScript: nodes;
		addScript: edges