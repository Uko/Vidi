as yet unclassified
methods
	^ methods ifNil: [ methods := self classes flatCollect: #descendents ]