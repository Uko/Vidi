initialization
initializeWidgets

	ruleList := self newList.	
	cityBrowser := self instantiate: CityBrowser.
	paneBrowser := self instantiate: RoassalModel.
	entityInspector := self instantiate: EntityCritics.
	
	mainView := self newTabManager.
	mainView
		addTab: (self newTab
			label: '  City'; "spaces because tab eats begining"
			model: cityBrowser);
		addTab: (self newTab
			label: '  Pane'; "spaces because tab eats begining"
			model: paneBrowser).
	
	self initializeRuleList.
	self initializeCityBrowser.
	self initializePaneBrowser