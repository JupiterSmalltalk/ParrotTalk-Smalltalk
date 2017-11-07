Smalltalk listLoadedModules
Smalltalk listBuiltinModules


| vat |
SecureSessionTerminal allInstances do: [:e | e shutdown].
SecureSessionServer allInstances do: [:e | e stop].
ConnectionHandler allInstances do: [:e | e stop].
Socket allInstances do: [:e | e closeAndDestroy].
vat := SecureSessionServer newOnVatIdentity: SecureSessionRSAIdentity sampleVatId2.
vat when: #connectionRunning evaluate: [ :conn | 
	Transcript cr; show: ('Connection running'); cr.
	conn when: #dataReceived evaluate: [ :data | 
		Transcript cr; show: ('Message received: ', data asString); cr].
	conn when: #connectionClosed evaluate: [ :connA | 
		Transcript cr; show: ('Connection closed, told by terminal'); cr].
	Transcript cr; show: ('sending message: hello world from Squeak'); cr.
	conn sendBytes: 'hello world from Squeak' asByteArray].
vat when: #connectionClosed evaluate: [ :conn | 
	Transcript cr; show: ('Connection closed, told by server'); cr].
vat traceMonitor enableDomain: #StackTraffic.
vat traceMonitor enableDomain: #ProtocolMsgs.
vat traceMonitor enableDomain: #Secrets.
vat


| keys conn |
keys := SecureSessionRSAIdentity generateKeySet.
conn := self connectToVatIdentity: (SecureSessionRSAIdentity 
	newOnHostPortString: '192.168.2.4:10011' 
	vatId: 'YqvtMoziv6OVpVvf9bmM1SSQ8Sk=').
conn when: #connectionRunning evaluate: [ :localConn | 
	Transcript cr; show: ('Connection running'); cr.
	localConn when: #dataReceived evaluate: [ :data | 
		Transcript cr; show: ('Message received: ', data asString); cr].
	localConn when: #connectionClosed evaluate: [ :connA | 
		Transcript cr; show: ('Connection closed, told by terminal'); cr].
	Transcript cr; show: ('sending message: hello world from Squeak'); cr.
	conn sendBytes: 'hello world from Squeak' asByteArray].
conn