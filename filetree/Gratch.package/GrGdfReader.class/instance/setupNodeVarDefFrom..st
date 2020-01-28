private
setupNodeVarDefFrom: aCollection
	| list |
	list := aCollection collect: #first.
	list := list \ self defaultNodeColumns.
	list do: [ :each | grWorld nodes addVariable: each ]