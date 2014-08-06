initialization
initializeWidgets

	ruleList := self newList.	
	cityBrowser := self instantiate: CityBrowser.
	entityInspector := self instantiate: EntityCritics.
	
	
	self initializeRuleList.
	self initializeCityBrowser