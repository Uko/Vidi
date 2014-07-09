as yet unclassified
withAllRulesOnPackagesNamed: aRegex
	^ self new
		rules: RBCompositeLintRule allGoodRules;
		environment: (RBPackageEnvironment packages:
			(RPackageOrganizer default packages select: [ :pac |
				aRegex match: pac name ]));
		yourself