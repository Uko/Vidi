accessing
environment: anEnvironment

	self packages: (anEnvironment packages collect: [ :pack |
		VPackage newFrom: pack inEnvironment: anEnvironment ] )
