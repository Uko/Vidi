as yet unclassified
nextAction

	| packages |	
	
	packages := selectedModel listItems.
	self delete.
	
	[ (VidiSessionManager default newSessionOnPackages: packages) openVidi ] fork.