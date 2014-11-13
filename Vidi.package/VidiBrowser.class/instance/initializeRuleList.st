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
					node content autoActions
						ifEmpty: [ node content name ]
						ifNotEmpty: [ "'* '," node content name ] ];
				yourself .
			TreeColumnModel new
				headerLabel: 'Critics';
				initialWidth: 20;
				resizable: false;
				displayBlock: [ :node |
					node content numberOfViolations ];
				yourself };
		menu: [ :menu | menu
			addGroup: [:aGroup |
				ruleList selectedItem ifNotNilDo: [ :litem |
					litem content autoActions do: [ :pragma |
						aGroup addItem: [ :item | item
							name: (pragma argumentAt: 1);
         					action: [
								litem content violations
									do: [ :viol |
										litem content lintRule
											withArgs: { viol entity mirroredEntity }
											executeMethod: pragma method ]
									displayingProgress: 'Chasing orcs...'
						  ] ] ] ]. ] ].
		
				
		
		
	RenrakuAnnouncer uniqueInstance weak
		when: RePortChanged
		send: #reportChanged:
		to: self. 