as yet unclassified
cumulativeReportResultFor: anEntity

	^ (self reportsFor: anEntity) values
		inject: 0 into: [ :ssum :val |
			ssum + val ]