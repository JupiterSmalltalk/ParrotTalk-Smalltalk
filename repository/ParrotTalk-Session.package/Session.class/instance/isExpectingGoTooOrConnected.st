derived
isExpectingGoTooOrConnected

	^ self ops isExpectingGoToo or: [self ops isConnected]