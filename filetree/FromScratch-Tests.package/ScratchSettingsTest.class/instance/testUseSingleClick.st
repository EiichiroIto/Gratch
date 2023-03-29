test
testUseSingleClick

	| obj |
	obj := self newObj.
	self deny: obj useSingleClick.
	obj useSingleClick: true.
	self assert: obj useSingleClick.
	obj useSingleClick: false.
	self deny: obj useSingleClick