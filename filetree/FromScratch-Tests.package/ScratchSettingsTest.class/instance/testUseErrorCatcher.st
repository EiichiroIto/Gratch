test
testUseErrorCatcher

	| obj |
	obj := self newObj.
	self deny: obj useErrorCatcher.
	obj useErrorCatcher: true.
	self assert: obj useErrorCatcher.
	obj useErrorCatcher: false.
	self deny: obj useErrorCatcher