private
updateWindowSettings
	| win |
	win := 	self window window.
	self application class dontClose
		ifTrue: [ win makeUnclosable ]
		ifFalse: [ win makeClosable ].
	self application class stickyWindow
		ifTrue: [ win beSticky ]
		ifFalse: [ win beUnsticky ]