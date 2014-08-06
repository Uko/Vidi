as yet unclassified
initialize
	super initialize.
	shape
		width:  1;
		height: 1;
		depth:  1.
		
	RenrakuAnnouncer uniqueInstance weak
		when: ReRuleVisiblityChanged
		send: #ruleVisibilityChanged:
		to: self;
		
		when: ReEntityUpdated 
		send: #reEntityUpdated:
		to: self