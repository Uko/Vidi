as yet unclassified
newSessionOnPackages: packages

	^ self addSession:
		(VidiSession new initializePackages: packages)

	