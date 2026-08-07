accessing
deploySystem
	"self deploySystem"

	(self confirm: 'Deploying System?') ifFalse: [ ^ self ].
	self currentWorld closeAllWindowsDiscardingChanges.
	FreeTypeFontProvider current updateFromSystem.
	MCRepositoryGroup allSubInstancesDo: [ :gr | gr repositories do: [ :r | gr removeRepository: r ] ].
	IceRepository registry removeAll.
	IceCredentialStore current in: [ :store | store allCredentials do: [ :each | each removeFrom: store ] ].
	Smalltalk cleanUp: true.
	Deprecation
		raiseWarning: false;
		showWarning: false.
	NoSourcesManager beCurrent.
	Stdio useNullStreams.
	MCCacheRepository uniqueInstance disable.
	EpMonitor reset.
	5 timesRepeat: [ Smalltalk garbageCollect ].
	Smalltalk snapshot: true andQuit: true