as yet unclassified
spec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :col | col 
			add: #roViz;
			add: #infoBar height: 30 ];
    	yourself