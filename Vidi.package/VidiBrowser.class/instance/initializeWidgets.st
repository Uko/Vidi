initialization
initializeWidgets

	ruleList := self newTree.	
	cityBrowser := self instantiate: CityBrowser.
	paneBrowser := self instantiate: RoassalModel.
	entityInspector := self instantiate: EntityCritics.
	
	mainView := self newTabManager.
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
	
	self initializeRuleList.
	self initializeCityBrowser.
	self initializePaneBrowser