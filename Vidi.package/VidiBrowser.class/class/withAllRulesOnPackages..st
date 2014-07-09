instance creation
withAllRulesOnPackages: aCollection
	^ self new
		rules: RBCompositeLintRule allGoodRules;
		environment: (RBPackageEnvironment packages: aCollection);
		yourself