spec
spec
<spec: #default>
	^ SpecLayout composed
		newRow: [ :row | row
			newColumn: [ :col | col
				newRow: [ :row2 | row2
					add: #selectAll;
					add: #deselectAll ] height: 30;
				add: #ruleList  ] origin: 0@0 corner: 0.2@1;
			addSplitter;
			add: #mainView        origin: 0.2@0 corner: 0.7@1;
			addSplitter;
			add: #entityInspector origin: 0.7@0 corner:   1@1 ];
    	yourself