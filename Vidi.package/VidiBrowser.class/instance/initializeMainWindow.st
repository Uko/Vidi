initialization
initializeMainWindow
	
	self initializeCityBrowser.
	self initializePaneBrowser.
	
	mainView
		addTab: (self newTab
			closeable: false;
			label: '  City'; "spaces because tab eats begining"
			model: cityBrowser;
			yourself);
		addTab: (self newTab
			closeable: false;
			label: '  Pane'; "spaces because tab eats begining"
			model: paneBrowser;
			yourself).
	
	