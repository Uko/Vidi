as yet unclassified
spec
<spec: #default>
	^ SpecLayout composed
		newColumn: [ :col | col 
			newRow: [ :row | row
				add: #itemTitle;
				add: #browseButton width: 30 ] height: 30;
			add: #critList;
			add: #codePane ];
    	yourself