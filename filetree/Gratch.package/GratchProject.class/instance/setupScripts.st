private
setupScripts

	| script |
	scripts := Array new: 3.
	script := GrGraphScript new
		          breed: self newGraph;
		          project: self;
		          yourself.
	scripts at: script breedNo put: script.
	script := GrNodesScript new
		          breed: self newNodes;
		          project: self;
		          yourself.
	scripts at: script breedNo put: script.
	script := GrEdgesScript new
		          breed: self newEdges;
		          project: self;
		          yourself.
	scripts at: script breedNo put: script