private
newApplication

	| app |
	app := SpGratch new.
	app settings: SpGratch settingsClass new.
	app presenter: app newPresenter.
	app grWorld: self newWorld.
	^ app