private
newApplication

	| app |
	app := SpGratch new.
	app presenter: app newPresenter.
	app grWorld: GrNativeWorld new.
	^ app