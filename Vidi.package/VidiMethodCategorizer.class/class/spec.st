spec
spec
<spec: #default>
	^ SpecLayout composed
		newRow: [ :row | row
			add: #protocols;
			add: #methods ];
    	yourself