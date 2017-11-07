instance creation
newOnAddress: address port: port

	^ self new 
		socketAddress: (InetSocketAddress newOnAddress: address port: port);
		yourself
