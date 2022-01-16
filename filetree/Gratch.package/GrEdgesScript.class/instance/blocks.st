block specs
blocks
	| blocks |
	blocks := #(
		'basic'
			('set node1 to %n'			-	setN1: 0)
			('set node2 to %n'			-	setN2: 0)
			('die'								-	die)
		'control'
			('when setup'					S	-)
		'sensing'
			('id'								r	getId)
			('node1'							r	getN1)
			('node2'							r	getN2)
			-
			('distance'						r	distance)
			('direction'					r	direction)
	).
	^ blocks, self colorBlocks, super blocks