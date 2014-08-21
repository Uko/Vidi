as yet unclassified
subscribe

	RenrakuAnnouncer uniqueInstance weak
		when: ReRuleVisiblityChanged
		send: #ruleVisibilityChanged:
		to: self;
		
		when: ReEntityUpdated 
		send: #reEntityUpdated:
		to: self;
		
		when: RePortRemoved
		send: #rePortRemoved:
		to: self;
		
		when: RePortAdded 
		send: #rePortAdded:
		to: self