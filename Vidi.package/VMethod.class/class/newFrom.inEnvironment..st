as yet unclassified
newFrom: aMethod inEnvironment: anEnvironment 
	^ self new
		name: aMethod selector;
		method: aMethod;
		environment: anEnvironment;
		yourself.