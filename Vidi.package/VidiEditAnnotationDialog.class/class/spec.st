as yet unclassified
spec
<spec: #default>
	^ SpecLayout composed
		newColumn: [ :col | col
			add: #description ];
    	yourself