*vidi
changeTooltip

	^ String streamContents: [ :stream |
		self methodChanged
			ifTrue: [ 
				stream
					nextPutAll: 'Method changed:';
					cr;
					nextPutAll: self name.
				self protocolChanged ifTrue: [ 
					stream
						cr; 
						nextPutAll: 'and recategorized';
						cr ] ]
			ifFalse: [
					stream
						nextPutAll: 'Recategorized ';
						nextPutAll: self name;
						cr ].
		self protocolChanged ifTrue: [
					stream
						nextPutAll: 'from ''';
						nextPutAll: self oldProtocol;
						nextPutAll: ''' to ''';
						nextPutAll: self newProtocol;
						nextPut: $' ] ].