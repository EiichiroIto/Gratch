test
testFullscreen

	| obj |
	obj := self newObj.
	self deny: obj fullscreen.
	obj fullscreen: true.
	self assert: obj fullscreen.
	obj fullscreen: false.
	self deny: obj fullscreen