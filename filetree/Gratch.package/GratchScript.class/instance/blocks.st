block specs
blocks
	"Answer a collection of block specifications for the blocks that are common to all objects. Block specificatons (Arrays) are interspersed with category names (Strings). A block specification is an Array of the form: (<block spec string> <block type> <selector> [optional initial argument values]).

	Explanation of flags:
		-	no flags
		b	boolean reporter
		c	c-shaped block containing a sequence of commands (always special form)
		r	reporter
		s	special form command with its own evaluation rule
		t	timed command, like wait or glide
		E	message event hat
		K	key event hat
		M	mouse-click event hat
		S	start event hat
		W	when <condition> hat (obsolete)"

	| blocks |
	blocks := #(
		'basic'
			-
			('kill %n of %m'							-	kill:breed: 0 '')
			-
			('set node %n ''s %N to %n'		-	setNode:var:to: 0 '' 0)
			('change node %n ''s %N by %n'	-	changeNode:var:by: 0 '' 0)
			-
			('set edge %n ''s %E to %n'		-	setEdge:var:to: 0 '' 0)
			('change edge %n ''s %E by %n'	-	changeEdge:var:by: 0 '' 0)
		'sensing'
			-
			('degrees of %n'				r degreesOf: 0)
			('distance from %n to %n'		r	distanceFrom:to: 0 0)
			('direction from %n to %n'	r	directionFrom:to: 0 0)
			-
			('ticks'							r 	ticks)
			('graph''s %G'					r	getGraphVar: '')
			('graph is connected'		b	graphIsConnected)
		'nodes'
			('node %n ''s %N'			r	getNode:var: 0 '')
			('# of nodes'					r	numberOfNodes)
			-
			('node with smallest %N'	r	nodeWithMin: '')
			('node with largest %N'		r	nodeWithMax: '')
			-
			('nearest from %n'			r	nearestNodeFrom: 0)
			('within %n from %n'		r	within:from: 10 0)
		'edges'
			('edge %n ''s %E'			r	getEdge:var: 0 '')
			('# of edges'					r	numberOfEdges)
			-
			('edge with smallest %E'	r	edgeWithMin: '')
			('edge with largest %E'		r	edgeWithMax: '')
		'color'
			('set color %c of node %n'	-	setColor:node:			15 0)
			('set color %c of edge %n'	-	setColor:edge:			15 0)
			('color of node %n'				r	getColorOfNode:		0)
			('color of edge %n'				r	setColorOfEdge:		0)
			-
	).

	^ super blocks, blocks, self variablesBlocks