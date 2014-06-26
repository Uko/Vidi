initialization
initializeWidgets

	ruleList := self newList.
	ruleList
		beMultipleSelection;
		autoDeselect: false;
		whenSelectionChanged: [ 
			rulesByViolator := nil.
			maxViolations := nil ];
		displayBlock: [ :rule | rule name ];
		items: self rules.
		
	roViz := self instantiate: Roassal3DModel.
	

    
   