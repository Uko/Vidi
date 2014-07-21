accessing
model: aModel
	
	model := aModel.
	cityBrowser packagesModel: self model.
	ruleList items: self model categorizedRules.
	
	ruleList resetSelection.