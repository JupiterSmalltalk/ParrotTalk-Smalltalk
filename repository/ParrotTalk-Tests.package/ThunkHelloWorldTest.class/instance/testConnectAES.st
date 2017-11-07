testing
testConnectAES

	| vat1 vat2 msg |
	msg := 'test'.
	dataReceived := false.
	msgMatch := nil.
	conn1Closed := false.
	conn2Closed := false.

	conn1 := nil. conn2 := nil.
	vat1 := SessionAgent newOnKey: SessionIdentity sampleVatId1 map: self buildMapAESedeAsn1Der.
	vat2 := SessionAgent newOnKey: SessionIdentity sampleVatId2 map: self buildMapAESedeAsn1Der.
	vat2 when: #connectionRunning evaluate: [ :conn | 
"		Transcript cr; show: 'Connection running'."
		conn2 := conn.
		conn2 send: msg.
		conn2 when: #connectionClosed evaluate: [ :connA | 
"			Transcript cr; show: 'Connection 2 closed'."
			conn2Closed := true]].

	conn1 := vat1 connectToKey: vat2 portalKey asVatLocation.
	conn1 when: #dataReceived evaluate: [ :bytes | 
"		Transcript cr; show: 'data received: ', bytes asString."
		dataReceived := true.
		msgMatch := bytes asString].
	conn1 when: #connectionClosed evaluate: [ :conn | 
"		Transcript cr; show: 'Connection 1 closed'."
		conn1Closed := true].

	(Delay forMilliseconds: 1500) wait.

	self assert: dataReceived.
	self should: [msgMatch = msg].

	conn1 shutdown.
	
	(Delay forMilliseconds: 10) wait.

	self assert: conn1Closed.
	self assert: conn2Closed.
	
	self assert: vat1 isPortalOpen.
	self assert: vat2 isPortalOpen.
	vat1 stop.
	self deny: vat1 isPortalOpen.
	self assert: vat2 isPortalOpen.
	vat2 stop.
	self deny: vat1 isPortalOpen.
	self deny: vat2 isPortalOpen.
