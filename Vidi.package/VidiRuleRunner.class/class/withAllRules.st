instance creation
withAllRules
	^ self new
		rules: RBCompositeLintRule allGoodRules;
		yourself