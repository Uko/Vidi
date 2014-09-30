initialization
initializePackages: aCollection

	self initialize.
	packages := aCollection asSet.
	model := ReModel withAllLintRulesForPackages: packages