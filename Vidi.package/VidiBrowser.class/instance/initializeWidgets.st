initialization
initializeWidgets

	ruleList := self newTree.	
	cityBrowser := self instantiate: CityBrowser.
	entityInspector := self instantiate: EntityCritics.
	
	
	self initializeRuleList.
	self initializeCityBrowser