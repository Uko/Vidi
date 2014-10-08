initialization
initializeWidgets

	ruleList := self newTree.
	cityBrowser := self instantiate: CityBrowser.
	paneBrowser := self instantiate: RoassalModel.	
	mainView := self newTabManager.
	entityInspector := self instantiate: EntityCritics.
	selectAll := self newButton.
	deselectAll := self newButton.
	
	self initializeMainWindow.
	self initializeRuleList.
	self initializeButtons