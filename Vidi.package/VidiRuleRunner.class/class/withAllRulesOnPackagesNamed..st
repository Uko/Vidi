instance creation
withAllRulesOnPackagesNamed: aRegex
	^ self withAllRules
		target: (RBPackageEnvironment packages: (RPackageOrganizer default packages select: [ :pac |
			aRegex match: pac name ]));
		yourself