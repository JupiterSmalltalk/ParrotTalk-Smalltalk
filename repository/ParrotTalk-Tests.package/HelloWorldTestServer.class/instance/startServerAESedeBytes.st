testing
startServerAESedeBytes

	| key |
	msg := 'hello world'.
	conn2Closed := false.

	conn2 := nil.
	key := SessionIdentity sampleVatId2 copy.
	key socketAddress port: 12222.
	vat2 := SessionAgent newOnKey: key map: self buildMapAESedeBytes.
	vat2 when: #connectionRunning evaluate: [ :conn | 
		Transcript cr; show: 'Connection running'.
		conn2 := conn.
		conn2 send: msg.
		conn2 when: #connectionClosed evaluate: [ :connA | 
			Transcript cr; show: 'Connection 2 closed'.
			conn2Closed := true]].
