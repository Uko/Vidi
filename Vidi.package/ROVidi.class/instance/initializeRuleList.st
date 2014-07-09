initialization
initializeRuleList

	ruleList
		beMultipleSelection;
		autoDeselect: false;
		whenSelectionChanged: [ 
			rulesByViolator := nil.
			maxViolations := nil.
			entityInspector critics:
				(self rulesFor: entityInspector entity ) ];
		displayBlock: [ :rule |
			rule name, ' (',
			(rule leaves flatCollect: #critics) size asString, ')' ];
		items: self rules