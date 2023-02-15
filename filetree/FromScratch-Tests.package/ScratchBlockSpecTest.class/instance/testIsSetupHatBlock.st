test
testIsSetupHatBlock

	| obj |
	obj := self newObj.
	self deny: obj isSetupHatBlock.
	obj type: #S.
	self assert: obj isSetupHatBlock.
	#( C E K M L T G c b r s t - ) do: [ :each | 
		obj type: each.
		self deny: obj isSetupHatBlock ]