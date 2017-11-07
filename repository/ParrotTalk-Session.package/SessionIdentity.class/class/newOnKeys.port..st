instance creation
newOnKeys: keys port: port

	| identity |
	Socket initializeNetwork.
	identity := self new
		socketAddress: (InetSocketAddress newOnPort: port);
		yourself.
	identity setupOnPublicKey: keys key privateKey: keys value.
	^ identity