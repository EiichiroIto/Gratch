private
updateWindowSettings

	| win |
	WorldMorph isFullscreen ~= self settings fullscreen ifTrue: [ 
		WorldMorph fullscreen: self settings fullscreen ].
	win := self window window.
	self settings dontClose
		ifTrue: [ win makeUnclosable ]
		ifFalse: [ win makeClosable ].
	self settings stickyWindow
		ifTrue: [ win beSticky ]
		ifFalse: [ win beUnsticky ].
	self settings resizable
		ifTrue: [ 
			self window beResizable.
			self window withDecorations ]
		ifFalse: [ 
			self window beNotResizable.
			self window withoutDecorations ]