accessing
model: aModel
	
	model := aModel.
	cityBrowser packagesModel: self model.
	paneBrowser refresh.
	
	ruleList items: self model categorizedRules.
	ruleList resetSelection.