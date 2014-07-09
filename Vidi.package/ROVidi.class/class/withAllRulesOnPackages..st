as yet unclassified
withAllRulesOnPackages: aCollection
	^ self new
		rules: RBCompositeLintRule allGoodRules;
		environment: (RBPackageEnvironment packages: aCollection);
		yourself