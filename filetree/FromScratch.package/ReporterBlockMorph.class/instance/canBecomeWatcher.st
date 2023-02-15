watcher
canBecomeWatcher
	^ self isReporter
		and: [ self argumentCount <= 1
				and:
					[ receiver watcherSelectors includes: selector ] ]