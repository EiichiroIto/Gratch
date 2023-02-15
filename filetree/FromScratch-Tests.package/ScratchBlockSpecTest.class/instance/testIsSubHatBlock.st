test
testIsSubHatBlock

	| obj |
	obj := self newObj.
	self deny: obj isSubHatBlock.
	obj type: #C.
	self assert: obj isSubHatBlock.
	#( L E K M S T G c b r s t - ) do: [ :each | 
		obj type: each.
		self deny: obj isSubHatBlock ]