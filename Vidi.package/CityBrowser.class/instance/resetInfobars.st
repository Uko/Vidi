protocol
resetInfobars

	packagesModel
		ifNil: [ 
			totalInfo text: ''.
			errorsInfo text: ''.
			^ self ]
	 	ifNotNil: [ 
			totalInfo label:
				'Total classes: ',
				packagesModel numberOfClasses asString,
				' methods: ',
				packagesModel numberOfMethods asString.
			errorsInfo label:
			'Violated classes: ',
			packagesModel numberOfViolatedClasses asString,
			' methods: ',
			packagesModel numberOfViolatedMethods asString,
			'; with a total number of violations: ',
			packagesModel numberOfViolations asString ]