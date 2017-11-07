instance creation
newOnKeys: keys host: host port: port

	| identity |
	Socket initializeNetwork.
	identity := self new
		socketAddress: (InetSocketAddress newOnName: host port: port);
		yourself.
	identity setupOnPublicKey: keys key privateKey: keys value.
	^ identity