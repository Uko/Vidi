as yet unclassified
nextAction

	|  packages session |	
	
	packages := selectedModel listItems.
	self delete.
	
	[
		session := (VidiSession new initializePackages: packages).
		session openVidi ] fork.