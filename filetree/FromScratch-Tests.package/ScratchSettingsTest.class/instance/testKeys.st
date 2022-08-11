test
testKeys

	| obj |
	obj := self newObj.
	self
		assertCollection: obj keys
		equals:
			#( dontClose fullscreen hideDebugMenu keepMaximize projectDir
			   resizable stickyWindow useErrorCatcher )