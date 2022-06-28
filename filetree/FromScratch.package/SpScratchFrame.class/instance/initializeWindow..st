initialization
initializeWindow: aWindow
	aWindow
		initialExtent: self defaultExtent;
		aboutText: application class aboutAppString;
		whenClosedDo: [ application windowClosing ]