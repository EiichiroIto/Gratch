test
testIsCBlock

	| obj |
	obj := self newObj.
	self deny: obj isCBlock.
	obj type: #c.
	self assert: obj isCBlock.
	#( C E K M S T L G b r s t - ) do: [ :each | 
		obj type: each.
		self deny: obj isCBlock ]