accessing
environment: anEnvironment
	environment := anEnvironment.
	self vidiModel: (ReModel new environment: anEnvironment).
	self reRunRules.
	cityBrowser packagesModel: self vidiModel 