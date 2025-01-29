private
newRequest

	| dialog |
	dialog := SpRequestDialog new.
	dialog
		acceptLabel: 'OK' localized;
		cancelLabel: 'Cancel' localized.
	^ dialog