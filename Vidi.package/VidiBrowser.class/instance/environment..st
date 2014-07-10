accessing
environment: anEnvironment
	environment := anEnvironment.
	self vidiModel: (VidiModel new environment: anEnvironment).
	self reRunRules.
	cityBrowser packagesModel: self vidiModel 