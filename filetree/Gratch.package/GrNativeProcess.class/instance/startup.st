api
startup
	transition := #afterStartup.
	runningEvents := {EventId startupEventNo}.
	grWorld clearTicks.