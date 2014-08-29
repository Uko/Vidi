accessing
model: aModel
	
	model := aModel.
	cityBrowser packagesModel: self model.
	ruleList roots: self model categorizedRules.

	ruleList roots do: #hide.
	ruleList resetSelection.