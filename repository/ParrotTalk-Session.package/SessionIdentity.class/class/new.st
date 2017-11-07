instance creation
new

	^ super new
		socketAddress: (InetSocketAddress newOnPort: self defaultPort);
		vatId: '<unknown>';
		nickname: '<unknown>';
		yourself.
