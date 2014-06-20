as yet unclassified
spec
<spec: #default>
	^ SpecLayout composed
		newRow: [ :row |
			row newColumn: [ :column |
				column
					add: #ruleList;
   		         add: #vizButton height: 30 ];
				addSplitter;
				add: #ccViz ];
    	yourself