initialization
registerToAnnouncements
	
	RenrakuAnnouncer uniqueInstance weak
		when: RePortChanged
		send: #reportChanged:
		to: self;
		
		when: ReRuleVisiblityChanged
		send: #ruleVisibilityChanged:
		to: self;
		
		when: ReEntityUpdated
		send: #entityUpdated:
		to: self;
		
		when: ReEntityRemoved
		send: #entityRemoved:
		to: self;
		
		when: RePortAdded
		send: #reportChanged:
		to: self;
		
		when: RePortRemoved
		send: #reportRemoved:
		to: self