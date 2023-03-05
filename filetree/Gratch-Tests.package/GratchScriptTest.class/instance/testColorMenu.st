test
testColorMenu

	| script obj |
	script := self newScript.
	obj := script colorMenu.
	self assert: obj isArray.
	obj do: [ :each | 
		self assert: each isArray.
		self assert: each size equals: 2.
		self assert: each first isString.
		self assert: each second isInteger ]