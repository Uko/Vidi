spec
spec
<spec: #default>
	^ SpecLayout composed
		newColumn: [ :col | col 
			newRow: [ :row | row
				add: #itemTitle;
				add: #browseButton width: 30 ] height: 30;
			add: #critics height: 20;
			add: #critList;
			addSplitter;
			add: #sourceCode height: 20;
			add: #codePane ];
    	yourself