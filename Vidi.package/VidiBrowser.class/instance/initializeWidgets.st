initialization
initializeWidgets

	ruleList := self newList.	
	cityBrowser := self instantiate: CityBrowserWithSelection.
	entityInspector := self instantiate: EntityCritics.
	
	
	self initializeRuleList.
	self initializeCityBrowser