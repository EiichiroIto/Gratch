test
testStickyWindow

	| obj |
	obj := self newObj.
	self deny: obj stickyWindow.
	obj stickyWindow: true.
	self assert: obj stickyWindow.
	obj stickyWindow: false.
	self deny: obj stickyWindow