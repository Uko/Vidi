initialization
initializeRuleList

	ruleList
		beMultipleSelection;
		autoDeselect: false;
		whenSelectionChanged: [ 
			rulesByViolator := nil.
			maxViolations := nil ];
		displayBlock: [ :assoc |
			assoc key, ' (',
			(assoc value sum: #numberOfViolations) asString, ')' ];
		items: self model categorizedRules associations