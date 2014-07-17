as yet unclassified
filterBlock

	^ [ :report | ruleList selectedItems anySatisfy: [ :assoc |
		assoc key = report rule category ] ]