test
testBlockSpec

	| script block blockSpec |
	script := self newScript.
	block := self newBlock.
	block selector: #abs:.
	block receiver: script.
	blockSpec := block blockSpec.
	self assert: (blockSpec isKindOf: ScratchBlockSpec).
	self assert: blockSpec selector equals: #abs:.
	self assert: blockSpec label equals: 'abs %n'