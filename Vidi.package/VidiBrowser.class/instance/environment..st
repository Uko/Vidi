accessing
environment: anEnvironment
	environment := anEnvironment.
	self reRunRules.
	cityBrowser environment: environment