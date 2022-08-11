initialization
initialize

	dictionary := Dictionary new.
	self dontClose: false.
	self keepMaximize: false.
	self hideDebugMenu: false.
	self projectDir: ''.
	self stickyWindow: false.
	self useErrorCatcher: false.
	self fullscreen: false.
	self resizable: true