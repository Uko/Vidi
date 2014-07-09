accessing
spec
<spec: #default>
	^ SpecLayout composed
		newRow: [ :row | row
			newColumn: [ :col | col
				add: #ruleList;
				add: #refreshButton height: 30 ] origin:   0@0 corner: 0.2@1;
			addSplitter;
			add: #cityBrowser     origin: 0.2@0 corner: 0.7@1;
			addSplitter;
			add: #entityInspector origin: 0.7@0 corner:   1@1 ];
    	yourself