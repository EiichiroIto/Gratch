test
testKeepMaximize

	| obj |
	obj := self newObj.
	self deny: obj keepMaximize.
	obj keepMaximize: true.
	self assert: obj keepMaximize.
	obj keepMaximize: false.
	self deny: obj keepMaximize