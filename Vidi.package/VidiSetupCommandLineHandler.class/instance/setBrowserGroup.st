utilities
setBrowserGroup

	Smalltalk tools browser groupsManager
		addADynamicClassGroupNamed: 'Vidi'
		block: [ (RPackageOrganizer default packageNamed: 'Vidi') orderedClasses ]