as yet unclassified
workingCopyStatusFor: aPackage

	self new openOn: (MCPatch
		fromBase: aPackage mcPackage baseSnapshot
		target: aPackage mcPackage snapshot)
			grouped