as yet unclassified
spec
<spec: #default>
	^ SpecLayout composed
		newColumn: [ :col | col
			add: #retitle height: 30;
			add: #description ];
    	yourself