initialization
initializeWidgets

	ruleList := self newList.
	ruleList
		beMultipleSelection;
		autoDeselect: false;
		whenSelectionChanged: [ 
			rulesByViolator := nil.
			maxViolations := nil ];
		displayBlock: [ :rule |
			rule name, ' (',
			(rule leaves flatCollect: #critics) size asString, ')' ];
		items: self rules.
		
	roViz := self instantiate: Roassal3DModel.
	
	infoBar := self newLabel.
	self resetInfobar.