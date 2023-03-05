test
testProject

	| script obj |
	script := self newScript.
	self assert: script project isNil.
	obj := ScratchProject new.
	script project: obj.
	self assert: script project identicalTo: obj