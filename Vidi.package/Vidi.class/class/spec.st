as yet unclassified
spec
<spec: #default>
	^ SpecLayout composed
		newRow: [ :row |
			row newColumn: [ :column |
				column
					add: #ruleCategories;
   		         add: #vizButton height: 30 ];
				add: #roassal ];
    	yourself