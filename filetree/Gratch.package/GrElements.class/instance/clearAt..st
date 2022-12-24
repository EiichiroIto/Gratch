accessing
clearAt: id

	| varNo |
	self userDefinedVarNames do: [ :each | 
		varNo := self varNoFor: each.
		self var: varNo at: id put: 0 ].
	self userDefinedListNames do: [ :each | 
		varNo := self varNoFor: each.
		self var: varNo list: id set: #(  ) ]