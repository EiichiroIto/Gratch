private
copyEdges

	| fromEdges toEdges |
	fromEdges := from allEdges.
	toEdges := to createEdges: fromEdges size.
	fromEdges with: toEdges do: [ :f :t | self copyEdge: f to: t ]