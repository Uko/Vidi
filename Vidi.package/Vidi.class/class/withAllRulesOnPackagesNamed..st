as yet unclassified
withAllRulesOnPackagesNamed: aRegex
	^ self new
		initializeRules: RBCompositeLintRule allGoodRules
		on: (RBPackageEnvironment packages: (RPackageOrganizer default packages select: [ :pac |
			aRegex match: pac name ]));
		yourself