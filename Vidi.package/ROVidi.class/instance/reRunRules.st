accessing
reRunRules

	rules
		do: [ :rule |
			rule runOnEnvironment: self environment ]
		displayingProgress: [ :rule |
			'Checking for ', rule name asLowercase ].
	rulesByViolator := nil.
	maxViolations := nil.
	ruleList refreshListItems.
	entityInspector critics:
				(self rulesFor: entityInspector entity )