accessing
rules: compositeRule
	rules := compositeRule rules.
	ruleList items: rules.
	self reRunRules.
	ruleList updateList.