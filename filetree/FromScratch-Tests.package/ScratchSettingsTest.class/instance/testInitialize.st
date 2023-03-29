test
testInitialize

	| obj |
	obj := self newObj.
	self deny: obj dontClose.
	self deny: obj keepMaximize.
	self deny: obj hideDebugMenu.
	self deny: obj stickyWindow.
	self deny: obj useErrorCatcher.
	self deny: obj fullscreen.
	self assert: obj resizable.
	self assert: obj projectDir isEmpty.
	self deny: obj useSingleClick