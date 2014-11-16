initialization
initializeWidgets
	protocols := self newList.
	protocols sortingBlock: [ :item1 :item2 |
		item1 < item2 ].
	protocols whenSelectedItemChanged: [ :item |
   		methods items: (class selectorsInProtocol: item).
		methods resetSelection ].
	protocols menu: [ :menu |
		class uncategorizedSelectors ifNotEmpty: [
			menu
				target: self;
				add: 'Categorize all uncategorized'
				action: #categorizeAllUncategorized ].
		menu ].
	protocols
		dropEnabled: true;
    	wantDropBlock: [ :draggedItem :event :source | 
			draggedItem isTransferable and: [ draggedItem source model model = methods ] ];
    	acceptDropBlock: [ :transfer :event :source :receiver :index |
    		transfer passenger do: [ :method |
				class>>method protocol: (protocols listElementAt: index) ].
     		protocols setIndex: index ]. 
	
	methods := self newList.
	methods dragEnabled: true
	"methods whenSelectedItemChanged: [ :item |
   		protocols setSelectedItem: (class>>item) protocol ]."