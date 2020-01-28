block specs
blockSpecs
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
			('create %n nodes'				- createNodes: 10)
			-
			('clear nodes'						-	clearNodes)
			('clear edges'						-	clearEdges)
		'control'
			('when setup'						T	-)
	).

	^ blocks, self constantColorBlocks, super blockSpecs