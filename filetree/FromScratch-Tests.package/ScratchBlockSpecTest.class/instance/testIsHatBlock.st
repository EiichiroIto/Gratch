test
testIsHatBlock

	| obj |
	obj := self newObj.
	self deny: obj isHatBlock.
	#( C E K M S T L G ) do: [ :each | 
		obj type: each.
		self assert: obj isHatBlock ].
	#( c b r s t - ) do: [ :each | 
		obj type: each.
		self deny: obj isHatBlock ]