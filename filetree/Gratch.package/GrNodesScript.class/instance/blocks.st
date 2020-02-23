block specs
blocks
	| blocks |
	blocks := #(
		'basic'
			('create edge to %n'		-	createEdgeTo: 0)
			('die'								-	die)
			-
			('set x to %n'				-	setXpos: 0)
			('change x by %n'		-	changeXposBy: 1)
			-
			('set y to %n'				-	setYpos: 0)
			('change y by %n'		-	changeYposBy: 1)
		'control'
			('when setup'					S	-)
		'sensing'
			('id'								r	getId)
			('name'								r	getName)
			('x position'					r	getXpos)
			('y position'					r	getYpos)
			('degrees'						r	degrees)
			-
			('distance to %n'			r	distanceTo: 0)
			('direction to %n'			r	directionTo: 0)
		'nodes'
			('other node'					r	otherNode)
		'edges'
			('edge to %n'					r	edgeTo: 0)
	).
	^ blocks, self colorBlocks, super blocks