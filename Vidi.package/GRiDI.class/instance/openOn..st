as yet unclassified
openOn: aPackage
	runner checkPackage: aPackage with: (RuleSet with: ReMetricRulesArray).
	^ super openOn: aPackage 