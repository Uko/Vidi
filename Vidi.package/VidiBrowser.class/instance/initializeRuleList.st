initialization
initializeRuleList

	ruleList
		beMultipleSelection;
		autoDeselect: false;
		whenSelectionChanged: [ 
			ruleList listItems do: [ :group |
				(ruleList selectedItems includes: group)
					ifTrue: [ group unhide ]
					ifFalse: [ group hide ] ] ];
		items: self model categorizedRules.
		
	RenrakuAnnouncer uniqueInstance weak
		when: RePortChanged
		send: #reportChanged:
		to: self.