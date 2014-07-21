accessing
model: aModel
	
	model := aModel.
	cityBrowser packagesModel: self model.
	ruleList items: self model categorizedRules.
	model announcer weak
		on: RePortChanged
		send: #refreshList
		to: self.
	
	ruleList resetSelection.