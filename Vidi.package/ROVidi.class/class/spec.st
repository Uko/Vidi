as yet unclassified
spec
<spec: #default>
	^ SpecLayout composed
		newRow: [ :row |
			row
				add: #ruleList origin: 0@0 corner: 0.2@1;
				addSplitter;
				newColumn: [ :col |
					col 
						add: #roViz;
						add: #infoBar height: 30 ] origin: 0.2@0 corner: 0.7@1;
				addSplitter;
				newColumn: [ :col |
					col 
						newRow: [ :row2 |
							row2
								add: #itemTitle;
								add: #browseButton width: 30 ] height: 30;
						add: #critList;
						add: #codePane ] origin: 0.7@0 corner: 1@1 ];
    	yourself