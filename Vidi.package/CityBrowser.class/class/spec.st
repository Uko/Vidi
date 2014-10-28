spec
spec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :col | col 
			add: #roViz;
			add: #totalInfo height: 20;
			add: #errorsInfo height: 20 ];
    	yourself