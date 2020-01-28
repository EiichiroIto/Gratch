class initialization
initialize
	"GratchTheme initialize."
	self themeIsInstalled
		ifFalse: [ (self confirm: 'Get themes from github.com?')
				ifFalse: [ ^ self ] ].
	self setupThemeNamed: SpGratch appFolderName