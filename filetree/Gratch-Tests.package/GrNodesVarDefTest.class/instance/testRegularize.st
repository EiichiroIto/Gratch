test
testRegularize
	| v |
	v := self newVarDef.
	self assertCollection: v varNames equals: #('color' 'flag' 'name' 'x' 'y').
	v privVarNames: #('color' 'x' 'y') asOrderedCollection.
	v regularize.
	self assertCollection: v varNames equals: #('color' 'flag' 'name' 'x' 'y').
	v privVarNames: #('color' 'x' 'y' 'a' 'b') asOrderedCollection.
	v regularize.
	self assertCollection: v varNames equals: #('color' 'flag' 'name' 'x' 'y' 'a' 'b')