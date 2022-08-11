test
testHideDebugMenu

	| obj |
	obj := self newObj.
	self deny: obj hideDebugMenu.
	obj hideDebugMenu: true.
	self assert: obj hideDebugMenu.
	obj hideDebugMenu: false.
	self deny: obj hideDebugMenu