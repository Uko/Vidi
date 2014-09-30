instance creation
newSessionOnPackages: packages

	^ self addSession:
		(VidiSession new initializePackages: packages)

	