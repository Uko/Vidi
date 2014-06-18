as yet unclassified
rules: compositeRule
	rules := compositeRule rules.
	ruleCategories items: rules.
	ruleCategories updateList.

	"ruleCategories roots: compositeRule rules.
	ruleCategories updateTree."