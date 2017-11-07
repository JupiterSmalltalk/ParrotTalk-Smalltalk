instance creation
newOnName: hostName port: port

	^ self new
		host: hostName;
		port: port;
		yourself