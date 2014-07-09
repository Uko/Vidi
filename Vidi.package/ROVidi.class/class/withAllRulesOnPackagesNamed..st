as yet unclassified
withAllRulesOnPackagesNamed: aRegex
	^ self withAllRulesOnPackages:
		(RPackageOrganizer default packages select: [ :pac |
				aRegex match: pac name ])