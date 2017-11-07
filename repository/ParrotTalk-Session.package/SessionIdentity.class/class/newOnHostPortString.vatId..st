instance creation
newOnHostPortString: hostPort vatId: vatId

	^ self new 
		vatId: vatId;
		socketAddress: (InetSocketAddress fromString: hostPort);
		yourself
