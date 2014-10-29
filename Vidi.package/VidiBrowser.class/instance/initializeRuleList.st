initialization
initializeRuleList

	ruleList
		beCheckList;
		autoMultiSelection: true;
		rootNodeHolder: [ :item |
			VidiRuleGroup new
				content: item;
				yourself ];
		roots: self model categorizedRules;
		columns: {
			TreeColumnModel new
				headerLabel: 'Rule';
				initialWidth: 200;
				displayBlock: [ :node |
					node content name ];
				yourself .
			TreeColumnModel new
				headerLabel: 'Critics';
				initialWidth: 20;
				resizable: false;
				displayBlock: [ :node |
					node content numberOfViolations ];
				yourself }.
		
	RenrakuAnnouncer uniqueInstance weak
		when: RePortChanged
		send: #reportChanged:
		to: self. 