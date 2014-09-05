as yet unclassified
initializePackages: aCollection

	self initialize.
	packages := aCollection asSet.
	model := ReModel withAllLintRulesForPackages: packages