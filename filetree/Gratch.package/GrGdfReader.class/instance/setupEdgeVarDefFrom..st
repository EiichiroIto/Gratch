private
setupEdgeVarDefFrom: aCollection
	| list |
	list := aCollection collect: #first.
	list := list \ self defaultEdgeColumns.
	list do: [ :each | grWorld edges addVariable: each ]