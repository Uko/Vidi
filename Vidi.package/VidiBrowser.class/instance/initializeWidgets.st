initialization
initializeWidgets

	ruleList := self newList.		
	refreshButton := self newButton.
	cityBrowser := self instantiate: CityBrowserWithSelection.
	entityInspector := self instantiate: EntityCritics.
	
	
	self initializeRuleList.
	self initializeRefreshButton.
	self initializeCityBrowser