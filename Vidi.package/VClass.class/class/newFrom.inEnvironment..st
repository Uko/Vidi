as yet unclassified
newFrom: aClass inEnvironment: anEnvironment

	^ self new
		name: aClass name;
		class: aClass;
		environment: anEnvironment;
		methods: (aClass methods
			select: [ :method |
				anEnvironment includesMethod: method ]
			thenCollect: [ :method |
				VMethod newFrom: method inEnvironment: anEnvironment ] ) 