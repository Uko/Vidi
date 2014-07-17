as yet unclassified
filterBlock

	^ [ :report | ruleList selectedItems anySatisfy: [ :grp |
		grp name = report rule category ] ]