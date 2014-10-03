*vidi
changeProtocolValue
	^ (self oldProtocol \ self newProtocol) size
	  +
	  (self newProtocol \ self oldProtocol) size / 2