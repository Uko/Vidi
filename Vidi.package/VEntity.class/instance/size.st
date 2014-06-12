as yet unclassified
size
	^ self descendents
		inject: 0
		into: [ :sum :desc |
			sum + desc size ]