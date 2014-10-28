protocol
resetInfobars

	packagesModel
		ifNil: [ 
			totalInfo text: ''.
			errorsInfo text: ''.
			^ self ]
	 	ifNotNil: [ 
			totalInfo text:
				'Total classes: ',
				packagesModel numberOfClasses asString,
				' methods: ',
				packagesModel numberOfMethods asString.
			errorsInfo text:
			'Violated classes: ',
			packagesModel numberOfViolatedClasses asString,
			' methods: ',
			packagesModel numberOfViolatedMethods asString,
			'; with a total number of violations: ',
			packagesModel numberOfViolations asString ]