as yet unclassified
spec
<spec: #default>
	^ SpecLayout composed
		newRow: [ :row |
			row
				add: #ruleList;
				addSplitter;
				add: #roViz ];
    	yourself