api
goto: aPoint

	(self withinScreen: aPoint) ifFalse: [ ^ cursor := 0 @ 0 ].
	cursor := aPoint